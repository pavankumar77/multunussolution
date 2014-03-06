using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using OAuthTwitterWrapper;
using Newtonsoft.Json;
using OAuthTwitterWrapper.JsonTypes;
using System.Text;
using System.Net;
using System.IO;
using System.Web.Script.Serialization;
using ASPSnippets.TwitterAPI;
using System.Data;

namespace Multunus
{
    
    public partial class Solution : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (!(TextBox3.Text == ""))
            {
                // Fetching all Retweets
                var oAuthConsumerKey = "0RPrNf5mlj93eFAyTuc4yA";
                var oAuthConsumerSecret = "jDD3SEcbgR0pylPKOlh18Rx2sjicmp52mEpyvpARTus";
                var oAuthUrl = "https://api.twitter.com/oauth2/token";
                var tweetId = TextBox3.Text;

                // Do the Authenticate
                var authHeaderFormat = "Basic {0}";

                var authHeader = string.Format(authHeaderFormat,
                    Convert.ToBase64String(Encoding.UTF8.GetBytes(Uri.EscapeDataString(oAuthConsumerKey) + ":" +
                    Uri.EscapeDataString((oAuthConsumerSecret)))
                ));

                var postBody = "grant_type=client_credentials";

                HttpWebRequest authRequest = (HttpWebRequest)WebRequest.Create(oAuthUrl);
                authRequest.Headers.Add("Authorization", authHeader);
                authRequest.Method = "POST";
                authRequest.ContentType = "application/x-www-form-urlencoded;charset=UTF-8";
                authRequest.AutomaticDecompression = DecompressionMethods.GZip | DecompressionMethods.Deflate;

                using (Stream stream = authRequest.GetRequestStream())
                {
                    byte[] content = ASCIIEncoding.ASCII.GetBytes(postBody);
                    stream.Write(content, 0, content.Length);
                }

                authRequest.Headers.Add("Accept-Encoding", "gzip");

                WebResponse authResponse = authRequest.GetResponse();
                // deserialize into an object
                TwitAuthenticateResponse twitAuthResponse;
                using (authResponse)
                {
                    using (var reader = new StreamReader(authResponse.GetResponseStream()))
                    {
                        JavaScriptSerializer js = new JavaScriptSerializer();
                        var objectText = reader.ReadToEnd();
                        twitAuthResponse = JsonConvert.DeserializeObject<TwitAuthenticateResponse>(objectText);
                    }
                }

                // Get the retweets by Id
                var retweetFormat = "https://api.twitter.com/1.1/statuses/retweets/{0}.json";
                var retweetsUrl = string.Format(retweetFormat, tweetId);
                HttpWebRequest timeLineRequest = (HttpWebRequest)WebRequest.Create(retweetsUrl);
                HttpWebRequest retweetRequest = (HttpWebRequest)WebRequest.Create(retweetsUrl);
                var retweetHeaderFormat = "{0} {1}";
                timeLineRequest.Headers.Add("Authorization", string.Format(retweetHeaderFormat, twitAuthResponse.token_type, twitAuthResponse.access_token));
                retweetRequest.Method = "Get";
                WebResponse retweetResponse = timeLineRequest.GetResponse();
                var retweetJson = string.Empty;
                using (retweetResponse)
                {
                    using (var reader = new StreamReader(retweetResponse.GetResponseStream()))
                    {
                        retweetJson = reader.ReadToEnd();
                    }
                }
                TextBox2.Text = retweetJson.ToString();
                
                // Fetching first 10 Usernames into Drop Down List

                string contents = TextBox2.Text;
                int len;
                len = contents.Length;

                bool flag = true;
                string hname = "";
                while (flag)
                {
                    for (int i = 0; i < len; i++)
                    {



                        if (contents[i].ToString() == "\"" && contents[i + 1].ToString() == "R" && contents[i + 2].ToString() == "T" && contents[i + 3].ToString() == " " && contents[i + 4].ToString() == "@")
                        {
                            for (int j = i + 5; contents[j].ToString() != ":"; j++)
                            {
                                hname = hname + contents[j].ToString();

                            }
                            flag = false;
                            break;

                        }

                    }
                }
                string will = hname;

                int n = 0;
                for (int i = 0; i < len; i++)
                {
                    string name = "";


                    if (contents[i].ToString() == "\"" && contents[i + 1].ToString() == "s" && contents[i + 2].ToString() == "c" && contents[i + 3].ToString() == "r" && contents[i + 4].ToString() == "e" && contents[i + 5].ToString() == "e" && contents[i + 6].ToString() == "n")
                    {
                        for (int j = i + 15; contents[j].ToString() != "\""; j++)
                        {
                            name = name + contents[j].ToString();

                        }

                        if (name != hname)
                        {
                            DropDownList1.Items.Add(name);
                            n++;
                        }
                        if (n == 10)
                        {
                            break;
                        }
                    }
                }

                // Authenticating Twitter APP and Redirecting

                for (int i = 0; i <= 9; i++)
                {
                    string sname = i.ToString();
                    Session[sname] = DropDownList1.Items[i];

                }
                Session["main"] = hname;

                Response.Redirect("Solution Display.aspx");




            }

        }
        public class TwitAuthenticateResponse
        {
            public string token_type { get; set; }
            public string access_token { get; set; }
        }
    }
}
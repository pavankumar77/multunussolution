using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPSnippets.TwitterAPI;
using System.Data;

namespace Multunus
{
    struct twituse : IComparable
    {
        public string twiti;
        public string imgur;
        public string follower;
        public string nam;


        #region IComparable Members
        public int CompareTo(object obj)
        {

            twituse other = (twituse)obj;

            if (Int32.Parse(other.follower) < Int32.Parse(this.follower)) { return -1; }

            if (Int32.Parse(other.follower) == Int32.Parse(this.follower)) { return 0; }

            return 1;

        }

        #endregion

    }
    public partial class Solution_Display : System.Web.UI.Page
    {
        twituse main = new twituse();
        protected void Page_Load(object sender, EventArgs e)
        {
            TwitterConnect.API_Key = "0RPrNf5mlj93eFAyTuc4yA";
            TwitterConnect.API_Secret = "jDD3SEcbgR0pylPKOlh18Rx2sjicmp52mEpyvpARTus";
            if (!TwitterConnect.IsAuthorized)
            {
                TwitterConnect twitter = new TwitterConnect();
                twitter.Authorize(Request.Url.AbsoluteUri.Split('?')[0]);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             twituse[] users = new twituse[8];
             if (TwitterConnect.IsAuthorized)
                    {
                        for (int i = 0; i < 8; i++)
                        {
                            TwitterConnect twitter = new TwitterConnect();

                            //LoggedIn User Twitter Profile Details

                            //Any other User Twitter Profile Details. Here jQueryFAQs
                            string sname=i.ToString();
                            string namee = Session[sname].ToString();
                            namee = namee.ToLower();

                            DataTable dt = twitter.FetchProfile(namee);
                            //imgOtherProfile.ImageUrl = dt.Rows[0]["profile_image_url"].ToString();
                            //lblOtherName.Text = dt.Rows[0]["name"].ToString();
                            //lblOtherTwitterId.Text = dt.Rows[0]["Id"].ToString();
                            //lblOtherScreenName.Text = dt.Rows[0]["screen_name"].ToString();
                            //lblOtherDescription.Text = dt.Rows[0]["description"].ToString();
                            //lblOtherTweets.Text = dt.Rows[0]["statuses_count"].ToString();
                            //lblOtherFollowers.Text = dt.Rows[0]["followers_count"].ToString();

                            users[i].twiti = dt.Rows[0]["Id"].ToString();
                            users[i].imgur = dt.Rows[0]["profile_image_url"].ToString();
                            users[i].follower = dt.Rows[0]["followers_count"].ToString();
                            users[i].nam = dt.Rows[0]["screen_name"].ToString();
                           
                        }

                        Array.Sort(users);
                        DropDownList1.Items.Clear();
                        for (int i = 0; i < 8; i++)
                        {
                            DropDownList1.Items.Add(users[i].nam );
                        }

                  //      fetchmainuser();

                        img1.ImageUrl = users[0].imgur;
                        img2.ImageUrl = users[1].imgur;
                        img3.ImageUrl = users[2].imgur;
                        img4.ImageUrl = users[3].imgur;
                        img5.ImageUrl = users[4].imgur;
                        img6.ImageUrl = users[5].imgur;
                        img7.ImageUrl = users[6].imgur;
                        img8.ImageUrl = users[7].imgur;
                     

                        


                        

                    }
                    if (TwitterConnect.IsDenied)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "key", "alert('User has denied access.')", true);
                    }
                
        }
        public void fetchmainuser()
        {
            if (TwitterConnect.IsAuthorized)
                    {
                        TwitterConnect twitter = new TwitterConnect();

                        //LoggedIn User Twitter Profile Details

                        //Any other User Twitter Profile Details. Here jQueryFAQs
                       
                        DataTable dt = twitter.FetchProfile(Session["main"].ToString());
                   

                        main.twiti = dt.Rows[0]["Id"].ToString();
                        main.imgur = dt.Rows[0]["profile_image_url"].ToString();
                        main.follower = dt.Rows[0]["followers_count"].ToString();
                        main.nam = dt.Rows[0]["screen_name"].ToString();
                           
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            twituse[] users = new twituse[8];
            if (TwitterConnect.IsAuthorized)
            {
                for (int i = 0; i < 8; i++)
                {
                    TwitterConnect twitter = new TwitterConnect();

                    //LoggedIn User Twitter Profile Details

                    //Any other User Twitter Profile Details. Here jQueryFAQs
                    string sname = i.ToString();
                    string namee = Session[sname].ToString();
                    namee = namee.ToLower();

                    DataTable dt = twitter.FetchProfile(namee);
                    //imgOtherProfile.ImageUrl = dt.Rows[0]["profile_image_url"].ToString();
                    //lblOtherName.Text = dt.Rows[0]["name"].ToString();
                    //lblOtherTwitterId.Text = dt.Rows[0]["Id"].ToString();
                    //lblOtherScreenName.Text = dt.Rows[0]["screen_name"].ToString();
                    //lblOtherDescription.Text = dt.Rows[0]["description"].ToString();
                    //lblOtherTweets.Text = dt.Rows[0]["statuses_count"].ToString();
                    //lblOtherFollowers.Text = dt.Rows[0]["followers_count"].ToString();

                    users[i].twiti = dt.Rows[0]["Id"].ToString();
                    users[i].imgur = dt.Rows[0]["profile_image_url"].ToString();
                    users[i].follower = dt.Rows[0]["followers_count"].ToString();
                    users[i].nam = dt.Rows[0]["screen_name"].ToString();

                }

                Array.Sort(users);
                DropDownList1.Items.Clear();
                for (int i = 0; i < 8; i++)
                {
                    DropDownList1.Items.Add(users[i].nam);
                }

                //      fetchmainuser();

                img1.ImageUrl = users[0].imgur;
                img2.ImageUrl = users[1].imgur;
                img3.ImageUrl = users[2].imgur;
                img4.ImageUrl = users[3].imgur;
                img5.ImageUrl = users[4].imgur;
                img6.ImageUrl = users[5].imgur;
                img7.ImageUrl = users[6].imgur;
                img8.ImageUrl = users[7].imgur;







            }
            if (TwitterConnect.IsDenied)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "key", "alert('User has denied access.')", true);
            }
        }
        
    }
}
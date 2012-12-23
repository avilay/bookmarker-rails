# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
WebPage.delete_all
User.delete_all
Bookmark.delete_all

# Create users
# TODO: Change this to use the secure way of creating
u1 = User.create(:email => 'user1@a.com', :name => 'User One', :password => 'password')

# Create webpages
wp1 = WebPage.create(:url => 'http://oli.web.cmu.edu/openlearning/index.php',
                :last_crawled_on => '12/20/2012', :title => 'CMU open lectures initiative')
wp2 = WebPage.create(:url => 'http://stackoverflow.com/questions/1625327/editorfor-and-html-properties',
                :last_crawled_on => '12/20/2012', :title => 'StackOverflow discussion board')
wp3 = WebPage.create(:url => 'http://www.amazon.com/gp/product/B005D6P182/ref=s9_pop_gw_g23_ir04/178-2726447-7044933?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-2&pf_rd_r=1A6NF2ZM2V8C0GPCNG4X&pf_rd_t=101&pf_rd_p=1263340922&pf_rd_i=507846',
                :last_crawled_on => '12/20/2012', :title => 'Amazon - worlds retailer')
wp4 = WebPage.create(:url => 'http://ocw.mit.edu/index.htm',
                :last_crawled_on => '12/20/2012', :title => 'MIT Open Courseware Home')
wp5 = WebPage.create(:url => 'http://www.codeproject.com/KB/threads/HowToDeleteCurrentProcess.aspx',
                :last_crawled_on => '12/20/2012', :title => 'Guest post on CodeProject')
wp6 = WebPage.create(:url => 'http://www.ml-class.com/',
                :last_crawled_on => '12/20/2012', :title => 'Coursera Machine Learning class')
wp7 = WebPage.create(:url => 'http://www.rubular.com/',
                :last_crawled_on => '12/20/2012', :title => 'Ruby regular expressions tester')
wp8 = WebPage.create(:url => 'http://relishapp.com/rspec',
                :last_crawled_on => '12/20/2012', :title => 'Rspec - Relish')
wp9 = WebPage.create(:url => 'http://www.springwise.com/',
                :last_crawled_on => '12/20/2012', :title => 'New business ideas and trends')
wp10 = WebPage.create(:url => 'http://research.microsoft.com/en-us/projects/azure/azuremodis.aspx',
                :last_crawled_on => '12/20/2012', :title => 'MODIS Azure - Microsoft Research')
wp11 = WebPage.create(:url => 'http://asmarterplanet.com/',
                :last_crawled_on => '12/20/2012', :title => 'A Smarter Planet Blog')
wp12 = WebPage.create(:url => 'http://www.agilealliance.org/',
                :last_crawled_on => '12/20/2012', :title => 'Agile Alliance :: Home')
wp13 = WebPage.create(:url => 'http://www.joelonsoftware.com/items/2009/03/09.html',
                :last_crawled_on => '12/20/2012', :title => 'How to be a program manager')
wp14 = WebPage.create(:url => 'http://guides.lib.washington.edu/content.php?pid=73137&sid=541392',
                :last_crawled_on => '12/20/2012', :title => 'Small business/Entrepreneurship resources')
wp15 = WebPage.create(:url => 'http://www.myownbusiness.org/',
                :last_crawled_on => '12/20/2012', :title => 'How to start a business')
wp16 = WebPage.create(:url => 'http://particletree.com/features/rediscovering-the-button-element/',
                :last_crawled_on => '12/20/2012', :title => 'Particle Tree CSS Designs')
wp17 = WebPage.create(:url => 'http://www.vtnews.vt.edu/story.php?relyear=2008&itemno=111',
                :last_crawled_on => '12/20/2012', :title => 'Virginia Tech news')
wp18 = WebPage.create(:url => 'http://crummy.com/2008/02/17/0',
                :last_crawled_on => '12/20/2012', :title => 'Where are all these programmers?')
wp19 = WebPage.create(:url => 'http://www.seochat.com/',
                :last_crawled_on => '12/20/2012', :title => 'SEO Home')
wp20 = WebPage.create(:url => 'http://www.moshmobile.com/index.php',
                :last_crawled_on => '12/20/2012', :title => 'Mosh')
wp21 = WebPage.create(:url => 'http://www.buzztracker.com/',
                :last_crawled_on => '12/20/2012', :title => 'Buzz News')
wp22 = WebPage.create(:url => 'http://www.txtreviews.com/',
                :last_crawled_on => '12/20/2012', :title => 'Now defunct')
wp23 = WebPage.create(:url => 'http://about.blyk.com/',
                :last_crawled_on => '12/20/2012', :title => 'Blyk')
wp24 = WebPage.create(:url => 'http://doe.sd.gov/octa/ddn4learning/statewide/gps/index.htm',
                :last_crawled_on => '12/20/2012', :title => 'GPS Tutorial')
wp25 = WebPage.create(:url => 'http://geodynamics.jpl.nasa.gov/sggs/',
                :last_crawled_on => '12/20/2012', :title => 'JPL GPS Tutorial')
wp26 = WebPage.create(:url => 'http://www.netflix.com/Genre/Documentary/864?trkid=1457035&lnkce=mdp-genre',
                :last_crawled_on => '12/20/2012', :title => 'Netflix Documentries')
wp27 = WebPage.create(:url => 'http://www.ibm.com/developerworks/library/l-gnuplot/',
                :last_crawled_on => '12/20/2012', :title => 'GNU Plot tutorial')
wp28 = WebPage.create(:url => 'http://gnuplot.sourceforge.net/demo/',
                :last_crawled_on => '12/20/2012', :title => 'GNUPlot demos')
wp29 = WebPage.create(:url => 'http://en.wikipedia.org/wiki/Internet_of_Things',
                :last_crawled_on => '12/20/2012', :title => 'Wikipedia - Internet Of Thigs')

# Create bookmarks
b1 = Bookmark.create(:user_id => u1.id, :web_page_id => wp1.id, 
                :is_pinned => true, :name => 'CMU open learning', :notes => 'This is a good resource for open learning', :added_on => '12/1/2012')
b2 = Bookmark.create(:user_id => u1.id, :web_page_id => wp2.id, 
                :name => 'Stackoverflow - html editor', :notes => 'Good discussion on so on html editors - there are none!', :added_on => '12/1/2012')
b3 = Bookmark.create(:user_id => u1.id, :web_page_id => wp3.id, 
                :name => 'Some amazon product', :notes => 'Why did not I use a wish list?!', :added_on => '12/1/2012')
b4 = Bookmark.create(:user_id => u1.id, :web_page_id => wp4.id, 
                :name => 'MIT open learning', :notes => 'This is a good resource on MIT open learning initiative.', :added_on => '12/1/2012')
b5 = Bookmark.create(:user_id => u1.id, :web_page_id => wp5.id, 
                :is_pinned => true, :name => 'CodeProject - Threading', :notes => 'Multi-threading gyan.', :added_on => '12/1/2012')
b6 = Bookmark.create(:user_id => u1.id, :web_page_id => wp6.id, 
                :name => 'Machine Learning classroom', :notes => '', :added_on => '12/1/2012')
b7 = Bookmark.create(:user_id => u1.id, :web_page_id => wp7.id, 
                :is_pinned => true, :name => 'Rubular home page', :notes => 'Some ruby resource', :added_on => '12/1/2012')
b8 = Bookmark.create(:user_id => u1.id, :web_page_id => wp8.id, 
                :name => 'Rspec home page', :notes => 'Learn how to use rspec and relish.', :added_on => '12/1/2012')
b9 = Bookmark.create(:user_id => u1.id, :web_page_id => wp9.id, 
                :name => 'Springwise home page', :notes => '', :added_on => '12/1/2012')
b10 = Bookmark.create(:user_id => u1.id, :web_page_id => wp10.id, 
                :name => 'MSDN - AzureModis', :notes => 'What the heck is azuremodis?!?', :added_on => '12/1/2012')
b11 = Bookmark.create(:user_id => u1.id, :web_page_id => wp11.id, 
                :name => 'A Smarter Planet', :notes => 'Cool website on modeling the world!', :added_on => '12/1/2012')
b12 = Bookmark.create(:user_id => u1.id, :web_page_id => wp12.id, 
                :name => 'Agile Alliance Home', :notes => 'What is agile alliance?', :added_on => '12/1/2012')
b13 = Bookmark.create(:user_id => u1.id, :web_page_id => wp13.id, 
                :name => 'Joel on software blog', :notes => 'A cool article by Joel on how to be a PM - be the customer advocate.', :added_on => '12/1/2012')
b14 = Bookmark.create(:user_id => u1.id, :web_page_id => wp14.id, 
                :name => 'University of Washington - guides', :notes => '', :added_on => '12/1/2012')
b15 = Bookmark.create(:user_id => u1.id, :web_page_id => wp15.id, 
                :name => 'My Own Business', :notes => 'Some good statup gyan here.', :added_on => '12/1/2012')
b16 = Bookmark.create(:user_id => u1.id, :web_page_id => wp16.id, 
                :name => 'ParticleTree - design and css', :notes => 'Tells how to do fun stuff with the button tag.', :added_on => '12/1/2012')
b17 = Bookmark.create(:user_id => u1.id, :web_page_id => wp17.id, 
                :name => 'Virginia Tech news', :notes => 'Some random news site..', :added_on => '12/1/2012')
b18 = Bookmark.create(:user_id => u1.id, :web_page_id => wp18.id, 
                :name => 'Crummy blog site', :notes => 'Talks about what the whos who of software are doing these days.', :added_on => '12/1/2012')
b19 = Bookmark.create(:user_id => u1.id, :web_page_id => wp19.id, 
                :name => 'SEO Chat Home', :notes => '', :added_on => '12/1/2012')
b20 = Bookmark.create(:user_id => u1.id, :web_page_id => wp20.id, 
                :name => 'Mosh Mobile home', :notes => 'Apparently now bought by ATT.', :added_on => '12/1/2012')
b21 = Bookmark.create(:user_id => u1.id, :web_page_id => wp21.id, 
                :name => 'BuzzTracker Home', :notes => 'Apparently now bought over by Yahoo!', :added_on => '12/1/2012')
b22 = Bookmark.create(:user_id => u1.id, :web_page_id => wp22.id, 
                :name => 'Txt Reviews Home', :notes => 'Does not exist anymore.', :added_on => '12/1/2012')
b23 = Bookmark.create(:user_id => u1.id, :web_page_id => wp23.id, 
                :name => 'Blyk About page', :notes => '', :added_on => '12/1/2012')
b24 = Bookmark.create(:user_id => u1.id, :web_page_id => wp24.id, 
                :name => 'How does GPS work?', :notes => '', :added_on => '12/1/2012')
b25 = Bookmark.create(:user_id => u1.id, :web_page_id => wp25.id, 
                :is_pinned => true, :name => 'Jet Propulsion Lab - NASA', :notes => 'Good GPS gyan.', :added_on => '12/1/2012')
b26 = Bookmark.create(:user_id => u1.id, :web_page_id => wp26.id, 
                :name => 'Netflix home', :notes => 'Netflix documentary page.', :added_on => '12/1/2012')
b27 = Bookmark.create(:user_id => u1.id, :web_page_id => wp27.id, 
                :name => 'IBM Developers Page', :notes => 'gnuplot tutorial.', :added_on => '12/1/2012')
b28 = Bookmark.create(:user_id => u1.id, :web_page_id => wp28.id, 
                :name => 'GNUPlot Home', :notes => 'Some cool gnuplot demos.', :added_on => '12/1/2012')
b29 = Bookmark.create(:user_id => u1.id, :web_page_id => wp29.id, 
                :is_pinned => true, :name => 'Wikipedia - Internet Of Things', :notes => '', :added_on => '12/1/2012')



u2 = User.create(:email => 'user2@a.com', :name => 'User Two', :password => 'password')
u3 = User.create(:email => 'user3@a.com', :name => 'User Three', :password => 'password')
u4 = User.create(:email => 'user4@a.com', :name => 'User Four', :password => 'password')
u5 = User.create(:email => 'user5@a.com', :name => 'User Five', :password => 'password')

Bookmark.create(:user_id => u2.id, :web_page_id => wp1.id, :name => 'user2 with web page 1', :notes => '', :added_on => '12/12/2012')
Bookmark.create(:user_id => u3.id, :web_page_id => wp1.id, :name => 'user3 with web page 1', :notes => '', :added_on => '12/12/2012')
Bookmark.create(:user_id => u4.id, :web_page_id => wp1.id, :name => 'user4 with web page 1', :notes => '', :added_on => '12/12/2012')
Bookmark.create(:user_id => u5.id, :web_page_id => wp1.id, :name => 'user5 with web page 1', :notes => '', :added_on => '12/12/2012')

Bookmark.create(:user_id => u2.id, :web_page_id => wp2.id, :name => 'user2 with web page 2', :notes => '', :added_on => '12/12/2012')
Bookmark.create(:user_id => u3.id, :web_page_id => wp2.id, :name => 'user3 with web page 2', :notes => '', :added_on => '12/12/2012')
Bookmark.create(:user_id => u4.id, :web_page_id => wp2.id, :name => 'user4 with web page 2', :notes => '', :added_on => '12/12/2012')

Bookmark.create(:user_id => u2.id, :web_page_id => wp3.id, :name => 'user2 with web page 3', :notes => '', :added_on => '12/12/2012')
Bookmark.create(:user_id => u3.id, :web_page_id => wp3.id, :name => 'user3 with web page 3', :notes => '', :added_on => '12/12/2012')

Bookmark.create(:user_id => u2.id, :web_page_id => wp4.id, :name => 'user2 with web page 4', :notes => '', :added_on => '12/12/2012')
Bookmark.create(:user_id => u3.id, :web_page_id => wp4.id, :name => 'user3 with web page 4', :notes => '', :added_on => '12/12/2012')
Bookmark.create(:user_id => u4.id, :web_page_id => wp4.id, :name => 'user4 with web page 4', :notes => '', :added_on => '12/12/2012')
Bookmark.create(:user_id => u5.id, :web_page_id => wp4.id, :name => 'user5 with web page 4', :notes => '', :added_on => '12/12/2012')






# DELOS SANTOS, MA. JAZMINE A.

Lab Activity 1: Discussion 
Laboratory Discussion: Discuss how you integrate the Image to the newsfeed_card.dart and make it dynamic

- I integrated the image into NewsfeedCard by creating a separate reusable widget called PostImage. Rather than displaying the image directly within the newsfeed card, I created a dedicated post_image.dart file to manage how the image is displayed. The PostImage widget uses an imagePath parameter to specify which image will appear. I then imported the widget into newsfeed_card.dart and placed it inside the Column that contains the post content. To control whether an image is displayed, I used a conditional statement based on the hasImage property. When hasImage is true, the PostImage widget is shown. Otherwise, it returns SizedBox.shrink(), which means no image will be displayed.
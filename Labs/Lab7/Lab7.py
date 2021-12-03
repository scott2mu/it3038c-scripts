#Murray Scott Lab 7 Script

from moviepy.editor import *

video = VideoFileClip("Dog.mp4")

editedvideo = video.add_mask().rotate(180)

editedvideo = TextClip("Fluffy White Doggo",fontsize=75,color='white')

editedvideo = editedvideo.set_pos('bottom').set_duration(5)

editedvideo = editedvideo.add_mask().rotate(180)

finalvideo = CompositeVideoClip([video, editedvideo])


finalvideo.write_videofile("EditedDoggo.webm",codec="libvpx")

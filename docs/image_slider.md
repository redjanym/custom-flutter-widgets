# Image Slider

An Instagram like Image Slider Widget. 

## How to use it?

1. Copy or download this file into your project.
2. Import this file wherever you need to use it.
3. Use it as a container of one or multiple network images.

## Example

```dart
    List listOfImages = [
        {
            "url": "https://via.placeholder.com/200"
        },
        {
            "url": "https://via.placeholder.com/350",
        },
        ......
        ......
    ];

    ImageSlider(images: listOfImages, height: 300, showPointers: true);
```

As you can see the widget accepts 3 parameters:

1. ```images```, a List of Maps with at least a required parameter called ```url```.
2. ```height```, an integer with a default value of 300px and a width of 100%.
3. ```showPointers```, a boolean value representing the visibility of the slider bulet pints which show the current image displayed on the existing list. By default the pointers are hidden if the list has only one item.
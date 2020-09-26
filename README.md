# MachineLearning with Patterns Based on Lengyel-Epstein model (20200115 ~ 20200730)
- In scientific computing lab, this is my first machinelearning project.  
- We aim to present the insight of the classification for pattern images generated from the Turing models using machine learning with feature engineering.  
Our insight is applied to the image data generated from the PDEs using both NN and clustering methods such as k-means and agglomerative.  

## Dataset
### Lengyel–Epstein (LE) model developed to describe the CIMA chemical reaction

<div align="center">
<img src="https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/MD_images/LE.png?raw=True" width="30%">
- Patterns in Lengyel-Epstein model created by MATLAB. 
</div>  

[[Detail]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/tree/master/Lengyel-Epstein_patterns)  

![patterns](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/MD_images/pattern.jpg)  

- We choice dissimilar patterns for classification

<center><img src="https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/MD_images/dissimilar_patterns.jpg" width="470" height="180"></center>

## Process - Presentation
1. Chemical prepattern and reaction-diffusion models for pigmentation [[20200115]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/1.%2020200115.pdf)  
    : Lengyel-Epstein equation in 1D with MATLAB  
      
> 2. Creating the pattern images(2D) based on Lengyel-Epstein model with MATLAB [[20200212]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/2.%2020200212.pdf)  
    : To classify 3 dissimilar patterns through a Neural Network  
      
3. Gradient Descent [[20200219]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/3.%2020200219.pdf)  
  
> 4. Single-Layer Neural Network with Softmax [[20200226]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/4.%2020200226.pdf)  
  
5. CNN(Convolutional Neural Network) [[20200311]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/5.%2020200311.pdf)  
    : Performance of CNN is tremendous, but I want to increase the performance of the single-layer neural network.  
      
> 6. Gradient feature in affine layer [[20200315]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/6.%2020200315.pdf)  
  
7. Adam regularization [[20200323]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/7.%2020200323.pdf)  
  
> 8. PCA (Principle Component Analysis) [[20200330]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/8.%2020200330.pdf)  
    : I don't think this will help reduce over-fitting.  
I realized that the number of training data can affect accuracy.  
  
9. Compare 10 cases [[20200413]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/9.%2020200413.pdf)  
    : When classifying images that are not similar, the accuracy of 9th model was good. But not in similar images.  
      
> 10. Classification of all patterns [[20200427]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/10.%2020200427.pdf)  
    : I thought that similar patterns are mathematically the same ones thus 9th model can't classify it.  
      
11. Complex Pattern in a simple system [[20200504]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/11.%2020200504.pdf)  
    : Pearson's Classification of Gray-Scott System Parameter Values  
      
> 12. k-means clustering [[20200511]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/12.%2020200511.pdf)  

13. Recall [[20200708]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/13.%2020200708.pdf)  
    : Recall the whole process

> 14. Visualization [[20200708]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/14.%2020200715.pdf)  
    : We use three features (mean of $X$, mean of $\nabla X$, variance of {$X-X^3$}) to visualize all patterns in a two and three-dimension

## Architecture
### 1. Classification  [[code]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/tree/master/Classification_of_Pattern_Images)  
Single layer Neural Network (NN) is used for the classification of the patterns.  
We train a NN with a soft-max output layer comprising 3 output nodes.
The forward propagation is written:  

<img src="https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/MD_images/equations.png" width="25%" height="25%">

## Conclusion
### 1. Classification  
- Dissimilar patterns 

|Feature|Gradient Descent|Adam|
|---|---|---|
|x|0.36|0.42|
|nabla x|0.40|0.36|
|x-x^3|0.44|0.39|

|Features|Gradient Descent|Adam|
|---|---|---|
|x and nabla x|0.42|0.44|
|x and x-x^3|0.40|0.36|
|nabla x and x-x^3|**0.90**|**0.90**|

[[Detail]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/9.%2020200413.pdf)  

### 2. k-means and Agglomerative Clustering  
- Feature Selection for clustering [[presentation]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/14.%2020200715.pdf)  [[code]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/tree/master/Visualization_with_features)
- Visualization of all 36 patterns as 40 points per pattern in a three-dimensional space.

![all](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/MD_images/vis_all.jpg)  

- Visualization of all 36 patterns in a three-dimensional space. The points in same cluster are represented by same color. One point per pattern is visualized.  
[[code]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/tree/master/Clustering_with_features)  
    1. k-means clustering  
    <img src="https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/MD_images/kmeans.jpg" width="400" height="400">  
    
    2. Agglomerative clustering  
    <img src="https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/MD_images/agg.jpg" width="400" height="400">  

## Reference
Othmer, Hans G., et al. "The intersection of theory and application in elucidating pattern formation in developmental biology." Mathematical modelling of natural phenomena 4.4 (2009): 3-82.

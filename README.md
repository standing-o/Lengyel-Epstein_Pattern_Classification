# Machine Learning with Patterns Based on Lengyel-Epstein Model
- In scientific computing lab, this is my first machine learning project.  
- We aim to present the insight of the classification for pattern images generated from the Turing models using machine learning with feature engineering. Our insight is applied to the image data generated from the PDEs using both NN and clustering methods such as k-means and agglomerative.
- Jan. 15, 2020 ~ Jul. 30, 2020

## OH, SEOYOUNG, and [SEUNGGYU LEE](https://sites.google.com/view/sglee/professor). "EXTRACTING INSIGHTS OF CLASSIFICATION FOR TURING PATTERN WITH FEATURE ENGINEERING."  
### [Paper](http://ksiam-editor.s3.amazonaws.com/1601252749955-jksiam-2020v24p321.pdf) | [Code1](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/tree/master/Classification_of_Pattern_Images), [Code2](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/tree/master/Clustering_with_features)  
> **Abstract** Data classification and clustering is one of the most common applications of the machine learning. In this paper, we aim to provide the insight of the classification for Turing pattern image, which has high nonlinearity, with feature engineering using the machine learning without a multi-layered algorithm. For a given image data X whose fixel values are defined in [-1, 1], X-X<sup>3</sup> and ∇X would be more meaningful feature than X to represent the interface and bulk region for a complex pattern image data. Therefore, we use X-X3 and∇ X in the neural network and clustering algorithm to classification. The results validate the feasibility of the proposed approach.

## Dataset
### Lengyel–Epstein (LE) model developed to describe the CIMA chemical reaction

<img src="https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/MD_images/LE.png?raw=True" width="30%">

- Patterns in Lengyel-Epstein model created by MATLAB | [Code](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/tree/master/Lengyel-Epstein_patterns)  

<img src="https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/MD_images/pattern.jpg?raw=True" width="65%">

- We choice dissimilar patterns for classification
<img src="https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/MD_images/dissimilar_patterns.jpg?raw=True" width="40%">

## Process
**1**. Chemical prepattern and reaction-diffusion models for pigmentation | [Presentation](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/1.%2020200115.pdf)  
    : Lengyel-Epstein equation in 1D with MATLAB  
      
> **2**. Creating the pattern images(2D) based on Lengyel-Epstein model with MATLAB | [Presentation](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/2.%2020200212.pdf)  
    : To classify 3 dissimilar patterns through a Neural Network  
      
**3**. Gradient Descent | [Presentation](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/3.%2020200219.pdf)  
  
> **4**. Single-Layer Neural Network with Softmax | [Presentation](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/4.%2020200226.pdf)  
  
**5**. CNN(Convolutional Neural Network) | [Presentation](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/5.%2020200311.pdf)  
    : Performance of CNN is tremendous, but I want to increase the performance of the single-layer neural network.  
      
> **6**. Gradient feature in affine layer | [Presentation](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/6.%2020200315.pdf)  
  
**7**. Adam regularization | [Presentation](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/7.%2020200323.pdf)  
  
> **8**. PCA (Principle Component Analysis) | [Presentation](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/8.%2020200330.pdf)  
    : I don't think this will help reduce over-fitting.  
I realized that the number of training data can affect accuracy.  
  
**9**. Compare 10 cases | [Presentation](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/9.%2020200413.pdf)  
    : When classifying images that are not similar, the accuracy of 9th model was good. But not in similar images.  
      
> **10**. Classification of all patterns | [Presentation](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/10.%2020200427.pdf)  
    : I thought that similar patterns are mathematically the same ones thus 9th model can't classify it.  
      
**11**. Complex Pattern in a simple system | [Presentation](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/11.%2020200504.pdf)  
    : Pearson's Classification of Gray-Scott System Parameter Values  
      
> **12**. k-means clustering | [Presentation](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/12.%2020200511.pdf)  

**13**. Recall | [Presentation](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/13.%2020200708.pdf)  
    : Recall the whole process

> **14**. Visualization | [Presentation](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/14.%2020200715.pdf)  
    : We use three features (mean of X, mean of nabla X, variance of X-X^3) to visualize all patterns in a two and three-dimension

## Architecture
### 1. Classification | [Code](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/tree/master/Classification_of_Pattern_Images)  
Single layer Neural Network (NN) is used for the classification of the patterns.  
We train a NN with a soft-max output layer comprising 3 output nodes.
The forward propagation is written:  

<img src="https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/MD_images/equations.png" width="25%" height="25%">

## Results
### 1. Classification with Dissimilar patterns | [Presentation](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/9.%2020200413.pdf)   
|Features|Gradient Descent|Adam|
|---|---|---|
|x|0.36|0.42|
|nabla x|0.40|0.36|
|x-x^3|0.44|0.39|
|x and nabla x|0.42|0.44|
|x and x-x^3|0.40|0.36|
|nabla x and x-x^3|**0.90**|**0.90**|  


### 2. k-means and Agglomerative Clustering  
- Feature Selection for clustering | [Presentation](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/14.%2020200715.pdf) | [Code](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/tree/master/Visualization_with_features)
- Visualization of all 36 patterns as 40 points per pattern in a three-dimensional space.

<img src="https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/MD_images/vis_all.jpg?raw=True" width="40%">

- Visualization of all 36 patterns in a three-dimensional space. The points in same cluster are represented by same color.  
One point per pattern is visualized. | [Code](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/tree/master/Clustering_with_features) 
- K-means clustering and Agglomerative clustering

<div align="center">
<img src="https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/MD_images/kmeans.jpg?raw=True" width="40%">   
<img src="https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/MD_images/agg.jpg?raw=True" width="40%"> <br>
</div>

## Info
- Authors : SEOYOUNG OH, SEUNGGYU LEE.
- Journal : KSIAM
- Year : 2020

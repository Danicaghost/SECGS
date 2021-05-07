# SECGS
This is code for SECGS, please check.  

![This is the SECGS model.](https://github.com/Danicaghost/SECGS/Model.jpg)

First, run getSENet: ser2.py or others to get SENet featuers.  
Second,run C-CCA: NEW_clusterccaCsvd.m to get DVS.  
Third, run estimated_probability: fabric_svd.py or mattreset_svd.py to get the estimated probability for DVS.  
Fourth, run ERGS: mainnew.m to get final result.  

For the obtained SENet features, we need to reshape them from 3D to 2D, and then proceed to the next step of fusion.  
In the ERGs folder, fabric9 or fabric10 are the codes that use 9 DVSs or 10 DVSs and the estimated probability of them, to complete ERGS fusion, respectively.  

Please refer to the differences between fabric9 and fabric10 for other quantitative feature fusion. 

The demo video is in the System folder.

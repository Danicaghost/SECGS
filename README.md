# SECGS
This is the code for the SECGS model, please check it.  

![This is the SECGS model.](https://github.com/Danicaghost/SECGS/blob/main/Model.jpg)

1.  Model implementation 

   First, please run the corresponding files including ser2.py, ser101n.py, serxt101n.py, serxt50n.py, and ser2.py in the "getSENet" folder to extract the corresponding SENet features, respectively. For the SENet features, we reshaped them from 3D to 2D, and proceed to the next step of feature early-fusion.
   
   Second, please run NEW_clusterccaCsvd.m in the "C-CCA" folder to perform feature early-fusion and generate a group of DVSs. 
   
   Third, please perform fabric_svd.py (or mattreset_svd.py) in the "estimated_probability" folder to get the estimated probability of each DVS on each dataset. 
   
   Finally, please run mainnew.m in the "ERGS" folder to complete the final feature mid-fusion.  

2.  Note

   (1) In the "ERGS" folder, "fabric9" (or "fabric10") represents the code that uses 9 DVSs (or 10 DVSs) and the corresponding estimated probabilities, to complete GS-based feature mid-fusion.
 
   (2) Please refer to "fabric9" (or "fabric10") to complete other similar feature mid-fusions.

   (3) The demo video of our online material recognition system can be acquired in the "System" folder.

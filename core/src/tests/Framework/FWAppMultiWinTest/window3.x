xof 0302txt 0064

FWScene fwScene3{
	{grScene3}
	{phScene3}

	FWObject fwCapsule3{
		{grFrameCapsule3}
		{soCapsule3}
	}
}

GRScene grScene3{
	GRFrame{	#SprGRFrame.h GRFrameDesc
	#Affinef transform
		1,0,0,0,
		0,1,0,0,
		0,0,1,0,
		0,0,1,1;;
		GRFrame grFrameWorld3{
			1,0,0,0,
			0,1,0,0,
			0,0,1,0,
			0,0,0,1;;
		}
	}

	GRLight light3{
		0.9; 0.9; 0.9; 1.0;;						#Vec4f ambient
		0.5; 0.5; 0.5; 1.9;;						#Vec4f diffuse
		0.1; 0.1; 0.1; 1.0;;						#Vec4f specular
		1.0; 1.0; 1.0; 0.0;;						#Vec4f position
		10000.0;									#float range
		1.0;										#float attenuation0
		0.0;										#float attenuation1
		0.0;										#float attenuation2
		0.0; 0.0; 0.0;;								#Vec3f spotDirection
		0;											#float spotFalloff
		0;											#float spotInner
		0;											#flaot spotCutoff
	}
	
	GRFrame grFrameCapsule3{
		#Affinef transform
		1.0, 0.0, 0.0, 0.0,
		0.0, 1.0, 0.0, 0.0,
		0.0, 0.0, 1.0, 0.0,
		0.0, 0.0, 0.0, 1.0;;
		#{cdCapsule}
	}
}

PHScene phScene3{
	#SprPHScene.h PHSceneState (inherited)
		0.01;			#double timeStep
		0				#unsigned count
	;
	0.0; -9.8; 0.0;;	#Vec3f 	gravity
	20;					#int 	numIteratin
	
	PHSolid soCapsule3{
		#SprPHSolid.h PHSolirState (inherited)
					0.0; 0.0; 0.0;;					#Vec3d		velocity
			0.0; 0.0; 0.0;;							#Vec3d		angVelocity
			1.0; 0.0; 0.0; 0.0; 0.0; -0.5; 0.0;;	#Posed		pose
			0.0; 0.0; 0.0;;							#Vec3d		force
			0.0; 0.0; 0.0;;							#Vec3d		torque
			0.0; 0.0; 0.0;;							#Vec3d		nextForce
			0.0; 0.0; 0.0;;							#Vec3d		nextTorque
		;
		20.0;										#double		mass
		1.0, 0.0, 0.0,								#Matrix3d	inertia	
		0.0, 1.0, 0.0,
		0.0, 0.0, 1.0;
		0.0; 0.0; 0.0;;								#Vec3d		center
		false;										#bool		dynamical
		CDCapsule cdCapsule3{
			#PHMaterialDesc
				0.4		#float mu;				///< �����C���C�W��
				0.4		#float mu0;				///< �Î~���C�W��
				0.7		#float e;				///< ���˕Ԃ�W��
				1.0		#float density;			///< ���x
			;
			1.0;									#float radius
			1.0;									#float length
		}
	}

}
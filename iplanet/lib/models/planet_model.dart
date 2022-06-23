class PlaneModel {
	String? name;
	String? title;
	String? img;
	String? description;
	String? tempMorn;
	String? tempNight;
	List<String>? gallery;
	String? yourAge;
	String? gravity;

	PlaneModel({
		this.name, 
		this.title, 
		this.img, 
		this.description, 
		this.tempMorn, 
		this.tempNight, 
		this.gallery, 
		this.yourAge, 
		this.gravity, 
	});

	factory PlaneModel.fromJson(Map<String, dynamic> json) => PlaneModel(
				name: json['name'] as String?,
				title: json['title'] as String?,
				img: json['img'] as String?,
				description: json['description'] as String?,
				tempMorn: json['tempMorn'] as String?,
				tempNight: json['tempNight'] as String?,
				gallery: json['gallery'] as List<String>?,
				yourAge: json['yourAge'] as String?,
				gravity: json['gravity'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'name': name,
				'title': title,
				'img': img,
				'description': description,
				'tempMorn': tempMorn,
				'tempNight': tempNight,
				'gallery': gallery,
				'yourAge': yourAge,
				'gravity': gravity,
			};

	PlaneModel copyWith({
		String? name,
		String? title,
		String? img,
		String? description,
		String? tempMorn,
		String? tempNight,
		List<String>? gallery,
		String? yourAge,
		String? gravity,
	}) {
		return PlaneModel(
			name: name ?? this.name,
			title: title ?? this.title,
			img: img ?? this.img,
			description: description ?? this.description,
			tempMorn: tempMorn ?? this.tempMorn,
			tempNight: tempNight ?? this.tempNight,
			gallery: gallery ?? this.gallery,
			yourAge: yourAge ?? this.yourAge,
			gravity: gravity ?? this.gravity,
		);
	}
}

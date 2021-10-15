class DeviceModel {
  String id = '';
  String model = '';
  String manufacturer = '';
  String coolText = '';
  List<String> featured = [];
  String operationalSystem = '';
  DateTime releaseDateOf = new DateTime.now();
  String width = '';
  String height = '';
  String depth = '';
  String weight = '';
  List<String>  availableColors = [];
  bool dualSim = false;
  String connectionType = '';
  String processor = '';
  int ram = 0;
  String internalMemory = '';
  String expandableMemory = '';
  String windowSize = '';
  int pixelDensity = 0;
  String colors = '';
  bool waterproof = false;
  String cameraMegaPixels = '';
  String cameraResolution = '';
  String cameraResolutionBy = '';
  int cameraOpeningCapacity = 0;
  bool cameraStabilization = false;
  bool cameraAutofocus = false;
  bool cameraOpticalZoom = false;
  bool cameraDigitalZoom = false;
  bool cameraFlash = false;
  bool cameraHdr = false;
  bool cameraLocation = false;
  bool cameraFacialDetection = false;
  bool cameraFrontal = false;
  String videoResolution = '';
  String videoResolutionBy = '';
  bool videoStabilization = false;
  bool videoAutofocus = false;
  bool videoSlowMotion = false;
  bool videoHdr = false;
  bool gps = false;
  bool compass = false;
  bool biometric = false;
  bool radio = false;
  bool tv = false;
  String capacity = '';
 
  DeviceModel({
    this.id,
    this.model,
    this.manufacturer,
    this.coolText,
    this.featured,
    this.operationalSystem,
    this.releaseDateOf,
    this.width,
    this.height,
    this.depth,
    this.weight,
    this.availableColors,
    this.dualSim,
    this.connectionType,
    this.processor,
    this.ram,
    this.internalMemory,
    this.expandableMemory,
    this.windowSize,
    this.pixelDensity,
    this.colors,
    this.waterproof,
    this.cameraMegaPixels,
    this.cameraResolution,
    this.cameraResolutionBy,
    this.cameraOpeningCapacity,
    this.cameraStabilization,
    this.cameraAutofocus,
    this.cameraOpticalZoom,
    this.cameraDigitalZoom,
    this.cameraFlash,
    this.cameraHdr,
    this.cameraLocation,
    this.cameraFacialDetection,
    this.cameraFrontal,
    this.videoResolution,
    this.videoResolutionBy,
    this.videoStabilization,
    this.videoAutofocus,
    this.videoSlowMotion,
    this.videoHdr,
    this.gps,
    this.compass,
    this.biometric,
    this.radio,
    this.tv,
    this.capacity
  });

  static DeviceModel fromJson(Map<String, dynamic> json) {
    final bool hasData = json != null;
    return hasData ? new DeviceModel(
      id: json['_id'],
      model: json['model'],
      manufacturer: json['manufacturer'],
      coolText: json['coolText'],
      featured: (json['featured'] ?? []).cast<String>().toList(),
      operationalSystem: json['operationalSystem'],
      releaseDateOf: json['releaseDateOf'] != null ? DateTime.parse(json['releaseDateOf']) : null,
      width: json['width'],
      height: json['height'],
      depth: json['depth'],
      weight: json['weight'],
      availableColors: (json['availableColors'] ?? []).cast<String>().toList(),
      dualSim: json['dualSim'] ?? false,
      connectionType: json['connectionType'],
      processor: json['processor'],
      ram: json['ram'],
      internalMemory: json['internalMemory'],
      expandableMemory: json['expandableMemory'],
      windowSize: json['windowSize'],
      pixelDensity: json['pixelDensity'],
      colors: json['colors'],
      waterproof: json['waterproof'] ?? false,
      cameraMegaPixels: json['cameraMegaPixels'],
      cameraResolution: json['cameraResolution'],
      cameraResolutionBy: json['cameraResolutionBy'],
      cameraOpeningCapacity: json['cameraOpeningCapacity'],
      cameraStabilization: json['cameraStabilization'] ?? false,
      cameraAutofocus: json['cameraAutofocus'] ?? false,
      cameraOpticalZoom: json['cameraOpticalZoom'] ?? false,
      cameraDigitalZoom: json['cameraDigitalZoom'] ?? false,
      cameraFlash: json['cameraFlash'] ?? false,
      cameraHdr: json['cameraHdr'] ?? false,
      cameraLocation: json['cameraLocation'] ?? false,
      cameraFacialDetection: json['cameraFacialDetection'] ?? false,
      cameraFrontal: json['cameraFrontal'] ?? false,
      videoResolution: json['videoResolution'],
      videoResolutionBy: json['videoResolutionBy'],
      videoStabilization: json['videoStabilization'] ?? false,
      videoAutofocus: json['videoAutofocus'] ?? false,
      videoSlowMotion: json['videoSlowMotion'] ?? false,
      videoHdr: json['videoHdr'] ?? false,
      gps: json['gps'] ?? false,
      compass: json['compass'] ?? false,
      biometric: json['biometric'] ?? false,
      radio: json['radio'] ?? false,
      tv: json['tv'] ?? false,
      capacity: json['capacity'],
    ) : null;
  }
}

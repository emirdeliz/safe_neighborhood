class DeviceQuery {
  static String buildQueryFindDeviceById(String id) {
    final String query = '''
      query DeviceFindOne {
        DeviceFindOne(filter:{ _id: "$id" }) {
          model
          manufacturer
          coolText
          featured
          operationalSystem
          releaseDateOf
          width
          height
          depth
          weight
          availableColors
          dualSim
          connectionType
          processor
          ram
          internalMemory
          expandableMemory
          windowSize
          pixelDensity
          colors
          cameraMegaPixels
          cameraResolution
          cameraResolutionBy
          cameraOpeningCapacity
          cameraStabilization
          cameraAutofocus
          cameraOpticalZoom
          cameraDigitalZoom
          cameraFlash
          cameraHdr
          cameraLocation
          cameraFacialDetection
          cameraFrontal
          videoResolution
          videoResolutionBy
          videoStabilization
          videoAutofocus
          videoSlowMotion
          videoHdr
          gps
          compass
          biometric
          radio
          tv
          capacity
        }
      }
    ''';
    return query;
  }
}
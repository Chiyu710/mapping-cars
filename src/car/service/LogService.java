package car.service;

import car.po.application.CarApplication;
import car.po.record.*;

import java.util.List;

public interface LogService {
      List<Track> getTrack(String trackID);
      List<Notification> getNF(String recipientID);
      boolean sendNot(Notification notification);
      boolean getNOT();
      boolean getFixLog(String carID);
      boolean getMLog(String carID);
      boolean saveStatusChange(StatusLog statusLog);
      boolean getBusiness(String userID);
      boolean getDRIVELOG();
      boolean getStaffDRIVELOG(String userid);
      boolean getVIO();
      boolean getStaffVIO(String userid);
      boolean saveDriveLog(DriveLog driveLog);
      boolean saveVio(Violation violation);
      boolean startDriveLog(CarApplication carApplication);
      boolean saveMaintenanceLog(MaintenanceLog maintenanceLog);
      boolean saveFixLog(FixLog fixLog);
      DriveLog getDLbyID(String id);
      boolean saveTracks(List<Track> tracks);
}

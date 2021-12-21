package car.service;

import car.po.application.CarApplication;
import car.po.record.*;

import java.util.List;

public interface LogService {
      // 获取轨迹
      List<Track> getTrack(String trackID);
      // 获取接收人通知
      List<Notification> getNF(String recipientID);
      // 获取全部通知
      boolean getNOT();
      // 根据carid获取维修记录
      boolean getFixLog(String carID);
      // 根据carid获取保养记录
      boolean getMLog(String carID);
      // 根据userid获取业务
      boolean getBusiness(String userID);
      // 获取全部行车日志
      boolean getDRIVELOG();
      // 根据userid获取全部行车日志
      boolean getStaffDRIVELOG(String userid);
      // 获取全部违规记录
      boolean getVIO();
      // 根据userid获取违规记录
      boolean getStaffVIO(String userid);
      // 根据出车单号获取行车日志
      DriveLog getDLbyID(String id);



      // 提交通知
      boolean sendNot(Notification notification);
      // 提交状态更新
      boolean saveStatusChange(StatusLog statusLog);
      // 提交行车日志
      boolean saveDriveLog(DriveLog driveLog);
      // 提交违规记录
      boolean saveVio(Violation violation);
      // 提交保养记录
      boolean saveMaintenanceLog(MaintenanceLog maintenanceLog);
      // 提交维修记录
      boolean saveFixLog(FixLog fixLog);
      boolean startDriveLog(CarApplication carApplication);
      boolean saveTracks(List<Track> tracks);
}

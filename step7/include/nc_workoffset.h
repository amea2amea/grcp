#ifndef NC_WORKOFFSET_H
#define NC_WORKOFFSET_H

// インクルード
#include "nc_interface.h"

/**
 * @brief ワークオフセット情報
 * @note NCのインターフェイスクラスを継承したもの
 */
class WorkoffsetNcData : public INcData
{
private:
    std::unordered_map<std::string, std::shared_ptr<NcObject>> data_;

public:
    WorkoffsetNcData(long x, long y, long z, long internal_unit)
    {
        data_["x"] = std::make_shared<NcValue<long>>(x, internal_unit);
        data_["y"] = std::make_shared<NcValue<long>>(y, internal_unit);
        data_["z"] = std::make_shared<NcValue<long>>(z, internal_unit);
    }
    std::unordered_map<std::string, std::shared_ptr<NcObject>> GetData() const override { return data_; }
};

#endif // NC_WORKOFFSET_H
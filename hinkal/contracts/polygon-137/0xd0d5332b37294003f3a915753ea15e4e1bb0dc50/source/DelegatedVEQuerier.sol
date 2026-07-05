pragma solidity ^0.8.0;

struct DelegateInfo {
    bool delegated;
    uint256 delegateTo;
    uint256 power;
}

interface IReceiver {
    function delegatedPower(uint256 key) external view returns (DelegateInfo memory);
    function currentEpoch() external view returns (uint256);
}

contract DelegatedVEQuerier {
    address public receiver;

    constructor (address receiver_) {
        receiver = receiver_;
    }

    function veKey(uint256 fromChainID, uint256 ve_id, uint256 epoch) public pure returns (uint256) {
        // fromChainID 1, ve_id 2, epoch 3 => veKey 0x100000000000000020000000000000003
        return (fromChainID << 128) + (ve_id << 64) + epoch;
    }

    function isDelegated(uint256 fromChainID, uint256 ve_id) public view returns (bool) {
        uint256 epoch = IReceiver(receiver).currentEpoch();
        uint256 veKey = veKey(fromChainID, ve_id, epoch);
        DelegateInfo memory info = IReceiver(receiver).delegatedPower(veKey);
        return info.delegated;
    }
}
pragma solidity ^0.8.28;

import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {ITheoTTokenOracle} from "./ITheoTTokenOracle.sol";
/**
 * @notice Oracle to post TUltra exchange rates per epoch
 */
contract TheoTUltraOracle is Ownable2Step, ITheoTTokenOracle {
    /// @notice bps denominator
    uint256 public constant BPS_DENOMINATOR = 1000000;

    /// @notice tracks current epoch
    uint256 public latestEpoch;

    /// @notice mapping of epoch number to exchange rate
    mapping(uint256 => uint256) private epochToExchangeRate;

    constructor(address _initialOwner, uint256 _initialExchangeRate) Ownable(_initialOwner) {
        require(_initialExchangeRate != 0, "Initial exchange rate cannot be zero");
        latestEpoch = 0;
        epochToExchangeRate[0] = _initialExchangeRate;
    }

    function getEpochExchangeRate(uint256 _epoch) external view returns (uint256) {
        uint256 exchangeRate = epochToExchangeRate[_epoch];
        require(exchangeRate != 0, "Exchange rate not set for epoch");
        return exchangeRate;
    }

    function getLatestExchangeRate() external view returns (uint256) {
        uint256 exchangeRate = epochToExchangeRate[latestEpoch];
        require(exchangeRate != 0, "Exchange rate not set for latest epoch");
        return exchangeRate;
    }

    function setExchangeRate(uint256 _epoch, uint256 _exchangeRate) external onlyOwner {
        require(_epoch <= latestEpoch + 1, "Can only set previous or next epoch");
        require(_exchangeRate != 0, "Exchange rate cannot be zero");
        uint256 updatingEpoch = _epoch;
        if (_epoch == latestEpoch + 1 || _epoch == 0) {
            updatingEpoch = latestEpoch + 1;
            latestEpoch = updatingEpoch;
        }
        epochToExchangeRate[updatingEpoch] = _exchangeRate;
    }
}

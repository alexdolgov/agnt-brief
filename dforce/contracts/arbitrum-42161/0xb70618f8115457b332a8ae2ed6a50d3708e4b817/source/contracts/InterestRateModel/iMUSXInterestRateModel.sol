// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts/utils/SafeCast.sol";
import "@openzeppelin/contracts/math/SignedSafeMath.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "../interface/IiToken.sol";
import "../library/Ownable.sol";
import "../library/SafeRatioMath.sol";

interface IsUSX {
    function owner() external view returns (address);
    function usrConfigs(uint256 _epochId) external view returns (uint256 _startTime, uint256 _endTime, uint256 _usr, uint256 _startRate);
    function usrConfigsLength() external view returns (uint256);
    function _addNewUsrConfig(uint256 _newUsrStartTime, uint256 _newUsrEndTime, uint256 _newUsr) external;
    function currentAPY() external view returns (uint256 _apy, uint256 _startTime, uint256 _endTime);
    function currentRate() external view returns (uint256 _rate);
    function currentUsr() external view returns (uint256 _usr);
    function getRateByTime(uint256 _time) external view returns (uint256 _rate);
}

interface IInterestRateModelClient {
    function updateInterest() external returns (bool);
    function isiMUSX() external pure returns (bool);
}

/**
 * @title dForce's iMUSX interest rate model contract
 * @dev This is a fixed interest rate model contract that integrates iMUSX with sUSX
 * @author dForce Team
 */
contract iMUSXInterestRateModel is Ownable  {
    using SafeCast for uint256;
    using SafeCast for int256;
    
    using SafeMath for uint256;
    using SignedSafeMath for int256;

    using SafeRatioMath for uint256;

    uint256 internal constant RAY = 1e27;
    uint256 internal constant BASE = 1e18;

    // Must not exceed this value
    int256 internal constant ratePerBlockMax = 0.001e18;

    // Must be greater than this value
    int256 internal constant ratePerBlockMin = -0.001e18;

    /**
     * @notice The approximate number of Ethereum blocks produced each year
     * @dev This is not used internally, but is expected externally for an interest rate model
     */
    uint256 public constant blocksPerYear = 2628000;

    address public immutable sUSX;

    /**
     * @notice Borrow interest rates per block
     */
    mapping(address => int256) public borrowRatesPerBlock;

    struct SUSXAccrualInfo {
        uint256 accrualBlock;
        uint256 accrualRate;
    }

    mapping(address => SUSXAccrualInfo) public sUSXAccrualInfos;

    /**
     * @dev Emitted when borrow rate for `target` is set to `rate`.
     */
    event BorrowRateSet(address target, int256 rate);

    constructor(address _sUSX) public {
        require(_sUSX != address(0), "Invalid sUSX contract address");
        __Ownable_init();

        sUSX = _sUSX;
    }

    /*********************************/
    /******** Security Check *********/
    /*********************************/

    /**
     * @notice Ensure this is an interest rate model contract.
     */
    function isInterestRateModel() external pure returns (bool) {
        return true;
    }

    /**
     * @dev Expect Vault iMUSX contract calls this function.
     */
    function enable() external {
        SUSXAccrualInfo storage _lastsUSXAccrualInfo = sUSXAccrualInfos[msg.sender];

        _lastsUSXAccrualInfo.accrualBlock = block.number;
        _lastsUSXAccrualInfo.accrualRate = IsUSX(sUSX).currentRate();
    }

    /**
     * @notice Get the current borrow rate per block
     * @return Current borrow rate per block (as a percentage, and scaled by 1e18).
     */
    function getBorrowRate(
        uint256 /*cash*/,
        uint256 /*borrows*/,
        uint256 /*reserves*/
    ) external view returns (uint256) {
        int256 _spread = borrowRatesPerBlock[msg.sender];
        uint256 _currentUsr = IsUSX(sUSX).currentUsr();
        uint256 _sUSXApyPerDay = _currentUsr.rpow(1 days, RAY);

        uint256 _base;
        int256 _res;

        if (_currentUsr == 0) {
            _res = _spread;
        } else if (_currentUsr > RAY) {
            _base = _sUSXApyPerDay.sub(RAY).mul(365).div(blocksPerYear).div(1e9);
            _res = _base.toInt256().add(_spread);
        } else {
            _base = RAY.sub(_sUSXApyPerDay).mul(365).div(blocksPerYear).div(1e9);
            _res = (-_base.toInt256()).add(_spread);
        }

        return _res>0 ? _res.toUint256() : 0; 
    }

    /**
     * @dev Update sUSX accrual info in this contract
     */
    function updateAccrualBorrowRate(
        uint256 /*cash*/,
        uint256 /*borrows*/,
        uint256 /*reserves*/
    ) public virtual returns (uint256) {
        require(IInterestRateModelClient(msg.sender).isiMUSX(), "Invalid caller!");
        
        int256 _spread = borrowRatesPerBlock[msg.sender];
        uint256 _newsUSXAccrualRate = IsUSX(sUSX).currentRate();
        SUSXAccrualInfo storage _lastsUSXAccrualInfo = sUSXAccrualInfos[msg.sender];
        require(_lastsUSXAccrualInfo.accrualBlock == IiToken(msg.sender).accrualBlockNumber(), "updateAccrualBorrowRate: Accrual block number mismatch!");

        uint256 _base;
        int256 _res;

        if (_newsUSXAccrualRate >= _lastsUSXAccrualInfo.accrualRate) {
            _base = _newsUSXAccrualRate
                        .sub(_lastsUSXAccrualInfo.accrualRate)
                        .mul(RAY)
                        .div(_lastsUSXAccrualInfo.accrualRate)
                        .div(block.number.sub(_lastsUSXAccrualInfo.accrualBlock))
                        .div(1e9);
            _res = _base.toInt256().add(_spread);
        } else {
            _base = _lastsUSXAccrualInfo.accrualRate
                        .sub(_newsUSXAccrualRate)
                        .mul(RAY)
                        .div(_lastsUSXAccrualInfo.accrualRate)
                        .div(block.number.sub(_lastsUSXAccrualInfo.accrualBlock))
                        .div(1e9);
            _res = (-_base.toInt256()).add(_spread);
        }

        _lastsUSXAccrualInfo.accrualBlock = block.number;
        _lastsUSXAccrualInfo.accrualRate = _newsUSXAccrualRate;

        return _res>0 ? _res.toUint256() : 0;
    }

    /**
     * @notice Admin function to set the current borrow rate per block
     */
    function _setBorrowRate(address _target, int256 _rate) public onlyOwner {
        require(_rate <= ratePerBlockMax && _rate >= ratePerBlockMin, "Borrow rate invalid");

        // Settle interest before setting new one
        IInterestRateModelClient(_target).updateInterest();

        borrowRatesPerBlock[_target] = _rate;

        emit BorrowRateSet(_target, _rate);
    }

    /**
     * @notice Admin function to set the borrow interest rates per block for targets
     */
    function _setBorrowRates(
        address[] calldata _targets,
        int256[] calldata _rates
    ) external onlyOwner {
        require(
            _targets.length == _rates.length,
            "Targets and rates length mismatch!"
        );

        uint256 _len = _targets.length;
        for (uint256 i = 0; i < _len; i++) {
            _setBorrowRate(_targets[i], _rates[i]);
        }
    }
}


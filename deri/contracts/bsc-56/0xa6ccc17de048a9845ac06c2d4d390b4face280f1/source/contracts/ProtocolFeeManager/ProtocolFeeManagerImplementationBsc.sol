// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import "../token/IERC20.sol";
import "../utils/SafeMath.sol";
import "./ProtocolFeeManagerStorage.sol";


contract ProtocolFeeManagerImplementationBsc is ProtocolFeeManagerStorage
{

    using SafeMath for uint256;
    using SafeMath for int256;

    address public constant USDC = 0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d;
    uint256 public constant decimalB0 = 18;
    address public immutable rebate;
    address public immutable arbitrumProtocolFeeManager;

    constructor(
        address rebate_,
        address arbitrumProtocolFeeManager_
    ) {
        rebate = rebate_;
        arbitrumProtocolFeeManager = arbitrumProtocolFeeManager_;
    }


    function setOperator(address operator_, bool isActive) external _onlyAdmin_ {
        isOperator[operator_] = isActive;
    }


    function distributeReferralFees(address recepient, uint256 amount) external {
        require(msg.sender == rebate, "Only rebate");
        require(
            IERC20(USDC).balanceOf(address(this)) >= amount,
            "Insufficient B0"
        );
        IERC20(USDC).transfer(recepient, amount);
    }

    function rebateUnclaimed() public view returns (uint256) {
        return IRebate(rebate).totalUnclaimed().rescale(18, decimalB0);
    }
}


interface IRebate {
    function totalUnclaimed() external view returns (uint256);
}


interface ICelerBridge {
    function send(
        address _receiver,
        address _token,
        uint256 _amount,
        uint64 _dstChainId,
        uint64 _nonce,
        uint32 _maxSlippage // slippage * 1M, eg. 0.5% -> 5000
    ) external;

    function sendNative(
        address _receiver,
        uint256 _amount,
        uint64 _dstChainId,
        uint64 _nonce,
        uint32 _maxSlippage
    ) external payable;
}
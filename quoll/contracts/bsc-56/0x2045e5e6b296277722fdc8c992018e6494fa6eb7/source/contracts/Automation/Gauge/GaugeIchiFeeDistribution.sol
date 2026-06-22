// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


interface IGauge {
    function periodFinish(address _token) external view returns (uint256);
    function notifyRewardAmount(address _token, uint _amount) external ;   
}

interface IFeeVault {
    function claimFees() external returns(uint256 gauge0, uint256 gauge1);
    function pool() external view returns (address);
}

interface IPairInfo {

    function token0() external view returns(address);
    function reserve0() external view returns(uint);
    function decimals0() external view returns(uint);
    function token1() external view returns(address);
    function reserve1() external view returns(uint);
    function decimals1() external view returns(uint);
    function isPair(address _pair) external view returns(bool);
}

contract GaugeIchiFeeDistribution is Ownable {

    using SafeERC20 for IERC20;
    uint256 public constant MAX_SHARE = 1_000;
    uint256 public share = 500; //50%

    address public immutable feevault;
    address public immutable gauge;
    address public immutable token0;
    address public immutable token1;
    address public fee_recipient;
    

    constructor(address _feevault, address _gauge, address _fee_recipient) {
        feevault = _feevault;
        gauge = _gauge;
        fee_recipient = _fee_recipient;

        address _pool = IFeeVault(feevault).pool();
        (token0, token1) = (IPairInfo(_pool).token0(), IPairInfo(_pool).token1());
    }


    function run() external onlyOwner {
        (uint256 gauge0, uint256 gauge1) = IFeeVault(feevault).claimFees();

        if(fee_recipient != address(0)) {
            (uint256 fee_recipient_0, uint256 fee_recipient_1) = (gauge0 * share / MAX_SHARE, gauge1 * share / MAX_SHARE);
            (gauge0, gauge1) = (gauge0 - fee_recipient_0, gauge1 - fee_recipient_1);
            IERC20(token0).safeTransfer(fee_recipient, fee_recipient_0);
            IERC20(token1).safeTransfer(fee_recipient, fee_recipient_1);
        }

        IERC20(token0).safeIncreaseAllowance(gauge, gauge0);
        IERC20(token1).safeIncreaseAllowance(gauge, gauge1);

        IGauge(gauge).notifyRewardAmount(token0, gauge0);
        IGauge(gauge).notifyRewardAmount(token1, gauge1);
    }
    


    function setShare(uint256 _share) external onlyOwner {
        require(_share <= MAX_SHARE, "ERR: MAX_SHARE");
        share = _share;
    }   

    function setFeeRecipient(address _fee_recipient) external onlyOwner {
        fee_recipient = _fee_recipient;
    }


    /// @notice Recover ERC20 from the contract.
    function recoverERC20(address _tokenAddress, uint256 _tokenAmount) external onlyOwner {
        require(_tokenAmount <= IERC20(_tokenAddress).balanceOf(address(this)));
        IERC20(_tokenAddress).safeTransfer(msg.sender, _tokenAmount);
    }

}
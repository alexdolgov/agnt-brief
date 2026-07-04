// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.6.12;

import '@openzeppelin/contracts/math/SafeMath.sol';
import '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/SafeERC20.sol';

import '../libs/RouterHelperV2.sol';
import "../interfaces/IFeeDistributor.sol";
import "../interfaces/IFeeReceiver.sol";
import "../interfaces/IRouteStorage.sol";

contract FeeDistributorV2 is Ownable, IFeeDistributor {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    uint256 public buybackShareBP;
    uint256 public bondsProfitShareBP;
    uint256 public eggProfitShareBP;
    uint256 public treasuryProfitShareBP;
    uint256 public platformShareBP;

    address public bondsReceiver;
    address public eggReceiver;
    address public treasuryReceiver;
    address public feeHolder;

    address public schedulerAddress = address(0xa6A5dd2ca182464B90A0D53DdeB16183f49668D3);

    address constant public eggAddress = address(0xF952Fc3ca7325Cc27D15885d37117676d25BfdA6);
    address constant public busdAddress = address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);
    address constant public burnAddress = address(0x000000000000000000000000000000000000dEaD);

    event BurnTokens(address indexed user, address indexed token, uint256 amount);
    event RescueTokens(address indexed user, address indexed token, uint256 amount);
    event UpdateFeeSettings(
        address indexed user,
        uint buybackShareBP,
        uint bondsProfitShareBP,
        uint eggProfitShareBP,
        uint treasuryProfitShareBP,
        uint platformShareBP
    );
    event UpdateFeeReceivers(
        address indexed user,
        address bondsReceiver,
        address eggReceiver,
        address treasuryReceiver,
        address feeHolder
    );
    event SetSchedulerAddress(address indexed user, address newAddr);

    constructor(
        address _bondsReceiver,
        address _eggReceiver,
        address _treasuryReceiver,
        address _feeHolder
    ) public {
        bondsReceiver = _bondsReceiver;
        eggReceiver = _eggReceiver;
        treasuryReceiver = _treasuryReceiver;
        feeHolder = _feeHolder;
    }

    modifier onlyAdmins(){
        require(msg.sender == schedulerAddress || msg.sender == owner(), "onlyAdmins: FORBIDDEN");
        _;
    }

    function totalShares() public view returns (uint256){
        return
        buybackShareBP +
        bondsProfitShareBP +
        eggProfitShareBP +
        treasuryProfitShareBP +
        platformShareBP;
    }

    function calculateFees(uint256 rewardAmount) external override view returns (uint256 feeAmount){
        return rewardAmount.mul(totalShares()).div(10000);
    }

    function transferFees(address feeToken, uint256 feeAmount) external override returns (bool){
        IERC20(feeToken).safeTransferFrom(msg.sender, address(this), feeAmount);
        return true;
    }

    function sellTokens(address router, address inputToken, address outputToken, address[] memory path) external onlyAdmins {
        uint256 amount = IERC20(inputToken).balanceOf(address(this));
        RouterHelperV2.swapTokens(router, amount, inputToken, outputToken, path);
    }

    function distributeFees(address buyEggRouter, address[] memory buyEggPath) external onlyAdmins {

        uint256 busdAmount = IERC20(busdAddress).balanceOf(address(this));

        uint256 _totalShares = totalShares();

        if (buybackShareBP > 0) {
            uint256 buybackAmount = busdAmount.mul(buybackShareBP).div(_totalShares);
            RouterHelperV2.swapTokens(buyEggRouter, buybackAmount, busdAddress, eggAddress, buyEggPath);
            burnTokens(eggAddress);
        }

        if (bondsProfitShareBP > 0) {
            uint256 bondsAmount = busdAmount.mul(bondsProfitShareBP).div(_totalShares);
            IERC20(busdAddress).safeIncreaseAllowance(bondsReceiver, bondsAmount);
            IFeeReceiver(bondsReceiver).income(bondsAmount);
        }

        if (eggProfitShareBP > 0) {
            uint256 eggAmount = busdAmount.mul(eggProfitShareBP).div(_totalShares);
            IERC20(busdAddress).safeIncreaseAllowance(eggReceiver, eggAmount);
            IFeeReceiver(eggReceiver).income(eggAmount);
        }

        if (treasuryProfitShareBP > 0) {
            uint256 treasuryAmount = busdAmount.mul(treasuryProfitShareBP).div(_totalShares);
            IERC20(busdAddress).safeIncreaseAllowance(treasuryReceiver, treasuryAmount);
            IFeeReceiver(treasuryReceiver).income(treasuryAmount);
        }

        if (platformShareBP > 0) {
            uint256 platformAmount = busdAmount.mul(platformShareBP).div(_totalShares);
            safeBusdTransfer(feeHolder, platformAmount);
        }
    }

    function safeBusdTransfer(address to, uint256 amount) internal {
        uint256 balance = IERC20(busdAddress).balanceOf(address(this));
        if (amount > balance) {
            IERC20(busdAddress).safeTransfer(to, balance);
        } else {
            IERC20(busdAddress).safeTransfer(to, amount);
        }
    }

    function burnTokens(address token) private {
        uint256 balance = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransfer(burnAddress, balance);
        emit BurnTokens(msg.sender, token, balance);
    }

    function rescueToken(address token) external onlyOwner {
        uint256 balance = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransfer(feeHolder, balance);
        emit RescueTokens(msg.sender, token, balance);
    }

    function updateFeeSettings(
        uint256 _buybackShareBP,
        uint256 _bondsProfitShareBP,
        uint256 _eggProfitShareBP,
        uint256 _treasuryProfitShareBP,
        uint256 _platformShareBP
    ) external onlyOwner {
        buybackShareBP = _buybackShareBP;
        bondsProfitShareBP = _bondsProfitShareBP;
        eggProfitShareBP = _eggProfitShareBP;
        treasuryProfitShareBP = _treasuryProfitShareBP;
        platformShareBP = _platformShareBP;

        emit UpdateFeeSettings(
            msg.sender,
            buybackShareBP,
            bondsProfitShareBP,
            eggProfitShareBP,
            treasuryProfitShareBP,
            platformShareBP
        );
    }

    function updateFeeReceivers(
        address _bondsReceiver,
        address _eggReceiver,
        address _treasuryReceiver,
        address _feeHolder
    ) external onlyOwner {
        bondsReceiver = _bondsReceiver;
        eggReceiver = _eggReceiver;
        treasuryReceiver = _treasuryReceiver;
        feeHolder = _feeHolder;

        emit UpdateFeeReceivers(
            msg.sender,
            bondsReceiver,
            eggReceiver,
            treasuryReceiver,
            feeHolder
        );
    }

    function setSchedulerAddr(address newAddr) external onlyAdmins {
        schedulerAddress = newAddr;
        emit SetSchedulerAddress(msg.sender, newAddr);
    }
}

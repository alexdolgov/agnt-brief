// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../../v1/utils/SafeMath.sol";
import "../../interface/ITreeFarm.sol";
import "../../external/pancake/interfaces/IPancakeRouter.sol";

abstract contract PlatformRevenueBase is OwnableUpgradeable {

    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    /// @notice parameter for revenue distribution of platform
    ITreeFarm public treeWallet;
    address public burnWallet;
    address public feeWallet;
    IERC20 public bnb;
    IERC20 public busd;
    uint256 constant TREE_ALLOCATION = 35;
    uint256 constant BURN_ALLOCATION = 60;
    uint256 constant FEE_ALLOCATION = 5;
    uint256 constant TOTAL_ALLOCATION = 100;
    uint256 constant MAXUINT = 115792089237316195423570985008687907853269984665640564039457584007913129639935;

    IPancakeRouter public router;
    IERC20 public treeRewardToken;

    function __PlatformRevenueBase_init(
        ITreeFarm _treeWallet,
        address _burnWallet,
        address _feeWallet,
        IERC20 _bnb,
        IERC20 _busd,
        IPancakeRouter _router
    ) internal {
        treeWallet = _treeWallet;
        burnWallet = _burnWallet;
        feeWallet = _feeWallet;
        bnb = _bnb;
        treeRewardToken = treeWallet.rewardToken();
        router = _router;

        _busd.safeApprove(address(router), MAXUINT);
        treeRewardToken.safeApprove(address(treeWallet), MAXUINT);
    }

    /// @dev pre-requisite is PlatformRevenueImplementer must approve BUSD to router and treeRewardToken(LEAF) to TreeFarm
    function distributeOperationFee(IERC20 _busd) internal {
        uint256 priceOperateAmount = _busd.balanceOf(address(this));
        uint256 _priceOperateAmountTree = priceOperateAmount.mul(TREE_ALLOCATION).div(TOTAL_ALLOCATION);
        
        // swap busd > BNB > Leaf then transfer leaf to tree wallet
        address[] memory treeRewardPath = new address[](3);
        treeRewardPath[0] = address(_busd);
        treeRewardPath[1] = address(bnb);
        treeRewardPath[2] = address(treeRewardToken);

        router.swapExactTokensForTokens(_priceOperateAmountTree, 0, treeRewardPath, address(this), MAXUINT);
        
        treeWallet.addReward(treeRewardToken.balanceOf(address(this)));
        _busd.safeTransfer(burnWallet, priceOperateAmount.mul(BURN_ALLOCATION).div(TOTAL_ALLOCATION));
        _busd.safeTransfer(feeWallet, priceOperateAmount.mul(FEE_ALLOCATION).div(TOTAL_ALLOCATION));
    }

    function setBurnWallet(address _burnWallet) external onlyOwner {
        burnWallet = _burnWallet;
    }
    function setTreeWallet(ITreeFarm _treeWallet) external onlyOwner {
        treeWallet = _treeWallet;
    }
    function setFeeWallet(address _feeWallet) external onlyOwner {
        feeWallet = _feeWallet;
    }
}

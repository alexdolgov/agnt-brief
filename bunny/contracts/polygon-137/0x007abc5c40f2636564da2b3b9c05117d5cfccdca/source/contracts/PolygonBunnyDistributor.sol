// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import "./interfaces/IPancakeRouter02.sol";
import "./interfaces/IPancakeFactory.sol";
import "./IBunnyLauncher.sol";
import "./IPolyBunnyDistributor.sol";
import "./interfaces/IStakingRewards.sol";
import "./interfaces/IStrategy.sol";

contract PolygonBunnyDistributor is IPolyBunnyDistributor, OwnableUpgradeable {
    using SafeERC20 for IERC20;
    using Address for address;
    using SafeMath for uint256;

    address public constant WETH = 0x7ceB23fD6bC0adD59E62ac25578270cFf1b9f619;
    IPancakeRouter02 private constant router = IPancakeRouter02(0xa5E0829CaCEd8fFDD4De3c43696c57F7D7A678ff);
    IPancakeFactory private constant factory = IPancakeFactory(0x5757371414417b8C6CAad45bAeF941aBc7d3Ab32);

    /* ========== STATE VARIABLES ========== */

    address public rocket;
    address public token;

    address public bunnyETHPool;  // our BUNNY-WETH Pool
    address public stakingRewards;

    uint public totalBalance;
    uint public totalFlipBalance;
    uint public totalETHBalance;

    mapping (address => uint) private balance;   // user's swap token balance
    address[] public users;

    modifier onlyRocket {
        require(msg.sender == rocket, "Not rocket");
        _;
    }

    /* ========== INITIALIZER ========== */

    function initialize(address _rocket) external initializer {
        rocket = _rocket;
        __Ownable_init();
    }

    /* ========== VIEW FUNCTIONS ========== */

    function balanceOf(address account) view external returns(uint) {
        return balance[account];
    }

    function flipToken() view public returns(address) {
        return factory.getPair(token, WETH);
    }

    /* ========== EXTERNAL ========== */

    function notifyCreate(uint256, address _token) override external onlyRocket {
        token = _token;
    }

    function notifyEngage(uint256 auctionId, address user, uint256 amount) override external onlyRocket {
        users.push(user);
        amount = IBunnyLauncher(rocket).swapTokenAmount(auctionId, amount);
        balance[user] = balance[user].add(amount);
        totalBalance = totalBalance.add(amount);
    }

    // addLiquidity of [_token - ETH] LP
    // set total Flip balance
    // 150% mint -> 50% LP user staking, 50% LP BunnyPool rewards, 50% BUNNY user staking
    // 15% mint -> deployer staking
    function notifyArchive(uint256, address _token, uint256 amount) override external onlyRocket {
        require(IERC20(_token).balanceOf(address(this)) >= totalBalance, "less token");
        require(IERC20(WETH).balanceOf(address(this)) >= amount, "less balance");

        uint tokenAmount = totalBalance.div(2);
        IERC20(_token).safeApprove(address(router), 0);
        IERC20(_token).safeApprove(address(router), tokenAmount);

        totalETHBalance = amount;
        uint amountETH = amount.div(2);
        IERC20(WETH).safeApprove(address(router), 0);
        IERC20(WETH).safeApprove(address(router), amountETH);

        router.addLiquidity(_token, WETH, tokenAmount, amountETH, 0, 0, address(this), block.timestamp);

        address lp = flipToken();
        totalFlipBalance = IERC20(lp).balanceOf(address(this));
    }

    function notifyClaim(uint256 auctionId, address user, uint256 amount) override external onlyRocket {

    }

    function setBunnyETHPool(address _masterChef) external onlyOwner {
        bunnyETHPool = _masterChef;
    }

    function setStakingRewards(address _rewards) external onlyOwner {
        stakingRewards = _rewards;
    }

    function distributeTokens(uint index, uint length) external onlyOwner {
        address lpToken = flipToken();
        require(lpToken != address(0), 'not set Flip');
        require(bunnyETHPool != address(0), 'not set bunnyETHPool');
        require(stakingRewards != address(0), 'not set stakingRewards');

        IERC20(lpToken).safeApprove(bunnyETHPool, 0);
        IERC20(lpToken).safeApprove(bunnyETHPool, totalFlipBalance);

        IERC20(token).safeApprove(stakingRewards, 0);
        IERC20(token).safeApprove(stakingRewards, totalBalance.div(2));

        for (uint i=index; i<length; i++) {
            address user = users[i];
            uint share = shareOf(user);

            _distributeFlip(user, share);
            _distributeToken(user, share);

            delete balance[user];
        }
    }

    // TODO LP to BUNNY Pool rewards

    function sendToRewards() external onlyOwner {
        uint tokenAmount = totalBalance.div(2);
        uint ethAmount = totalETHBalance.div(2);

        IERC20(token).safeApprove(address(router), 0);
        IERC20(token).safeApprove(address(router), tokenAmount);
        IERC20(WETH).safeApprove(address(router), 0);
        IERC20(WETH).safeApprove(address(router), ethAmount);

        uint prevLpBalance = IERC20(flipToken()).balanceOf(address(this));
        router.addLiquidity(token, WETH, tokenAmount, ethAmount, 0, 0, address(this), block.timestamp);

        uint lpBalance = IERC20(flipToken()).balanceOf(address(this)).sub(prevLpBalance);
        IERC20(flipToken()).safeTransfer(stakingRewards, lpBalance);
        IStakingRewards(stakingRewards).notifyRewardAmount(lpBalance);
    }


    function finalize() external onlyOwner {
        IERC20(WETH).safeTransfer(owner(), IERC20(WETH).balanceOf(address(this)));

        uint tokenBalance = IERC20(token).balanceOf(address(this));
        if (tokenBalance > 0) {
            IERC20(token).safeTransfer(owner(), tokenBalance);
        }

        uint lpBalance = IERC20(flipToken()).balanceOf(address(this));
        if (lpBalance > 0) {
            IERC20(flipToken()).safeTransfer(owner(), lpBalance);
        }
    }

    /* ========== PRIVATE ========== */

    function _distributeFlip(address user, uint share) private {
        uint remaining = IERC20(flipToken()).balanceOf(address(this));
        uint amount = totalFlipBalance.mul(share).div(1e18);
        if (amount == 0) return;

        if (remaining < amount) {
            amount = remaining;
        }

        IStrategy(bunnyETHPool).stakeTo(amount, user);
    }

    function _distributeToken(address user, uint share) private {
        uint remaining = IERC20(token).balanceOf(address(this));
        uint amount = totalBalance.div(2).mul(share).div(1e18);
        if (amount == 0) return;

        if (remaining < amount) {
            amount = remaining;
        }
        IStakingRewards(stakingRewards).stakeTo(amount, user);
    }

    function shareOf(address _user) view private returns(uint) {
        return balance[_user].mul(1e18).div(totalBalance);
    }
}

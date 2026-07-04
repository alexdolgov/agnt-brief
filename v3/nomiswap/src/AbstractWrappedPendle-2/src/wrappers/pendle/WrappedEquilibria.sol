// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

import "pendle-core/interfaces/IStandardizedYield.sol";

import "src/interfaces/equilibria/IDepositPool.sol";
import "src/interfaces/equilibria/IRewardPool.sol";
import "src/interfaces/equilibria/IPendleBooster.sol";
import "src/interfaces/equilibria/IEqbMinter.sol";
import "./AbstractWrappedPendle.sol";

contract WrappedEquilibria is AbstractWrappedPendle {

    using SafeERC20 for IERC20;

    IDepositPool public immutable DEPOSIT_POOL;
    IRewardPool  public immutable REWARD_POOL;
    IERC20       public immutable STAKING_TOKEN;
    IERC20       public immutable EQB;
    uint256      public immutable PID;

    constructor(
        address investToken_,
        address redeemToken_,
        address market_,
        address router_,
        address oracle_,
        address rewardPool_
    )
    AbstractWrappedPendle(investToken_, redeemToken_, market_, router_, oracle_)
    {
        REWARD_POOL = IRewardPool(rewardPool_);
        DEPOSIT_POOL = IDepositPool(REWARD_POOL.booster());
        STAKING_TOKEN = IERC20(REWARD_POOL.stakingToken());
        EQB = IERC20(DEPOSIT_POOL.eqb());
        PID = REWARD_POOL.pid();
    }

    function initialize(
        string memory name_,
        string memory symbol_,
        address authority_
    ) public initializer {
        __AbstractWrappedPendle_init(name_, symbol_, authority_);
    }

    function _unstakePendleLp(uint256 lpAmount) internal virtual override {
        REWARD_POOL.withdraw(lpAmount);
        DEPOSIT_POOL.withdraw(PID, lpAmount);
    }

    function _stakePendleLp(uint lp) internal virtual override {
        if (lp > 0) {
            IERC20(MARKET).forceApprove(address(DEPOSIT_POOL), lp);
            DEPOSIT_POOL.depositAll(PID, true);
        }
    }

    /// @dev offchain usage
    function poolTokens()
        public
        view
        override
        returns (address[] memory tokens)
    {
        tokens = new address[](1);
        tokens[0] = address(MARKET);
    }

    function _lpBalance() internal view virtual override returns (uint256) {
        return REWARD_POOL.balanceOf(address(this));
    }

    function _claim(address to) internal virtual override {
        REWARD_POOL.getReward(address(this));
        uint256 rewardTokensLength = REWARD_POOL.getRewardTokensLength();

        for (uint256 i = 0; i < rewardTokensLength; i++) {
            address rewardToken = REWARD_POOL.rewardTokens(i);
            uint256 rewardAmount = IERC20(rewardToken).balanceOf(address(this));

            if (rewardAmount > 0) {
                IERC20(rewardToken).safeTransfer(to, rewardAmount);
            }
        }

        if (address(EQB) != address(0)) {
            uint eqbAmount = EQB.balanceOf(address(this));
            if (eqbAmount > 0) {
                EQB.safeTransfer(to, eqbAmount);
            }
        }

        uint256 _interestAssets = interestAssets();
        if (_interestAssets > 0) {
            _unstakePendleLp(_interestAssets);

            _burnPendleLp(_interestAssets);
            uint256 redeemTokenBalance = REDEEM_TOKEN.balanceOf(address(this));

            REDEEM_TOKEN.safeTransfer(to, redeemTokenBalance);
        }

    }

    /// @dev offchain usage
    function rewardTokens() public view override returns (address[] memory tokens) {
        uint256 tokensLength = REWARD_POOL.getRewardTokensLength();

        bool eqbIsNotZero = address(EQB) != address(0);

        tokens = new address[](tokensLength + 1 + (eqbIsNotZero ? 1 : 0));

        for (uint256 i = 0; i < tokensLength; i++) {
            tokens[i] = REWARD_POOL.rewardTokens(i);
        }

        tokens[tokensLength] = address(REDEEM_TOKEN);
        if (eqbIsNotZero) {
            tokens[tokensLength + 1] = address(EQB);
        }
    }

    /// @dev offchain usage
    function farmingPool() public view returns (address) {
        return address(DEPOSIT_POOL);
    }

    function description()
        external
        view
        override
        returns (string memory)
    {
        (IStandardizedYield sy, ,) = MARKET.readTokens();
        (,address nativePool,) = sy.assetInfo();

        return string.concat(
            '{',
            '"type":"equilibriaPendle",',
            '"asset":"',Strings.toHexString(nativePool),'",',
            '"market":"',Strings.toHexString(address(MARKET)),'",',
            '"oracle":"',Strings.toHexString(address(ORACLE)),'"',
            '}'
        );
    }

}
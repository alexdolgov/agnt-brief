// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/utils/Strings.sol";

import "src/wrappers/pendle/AbstractWrappedPendle.sol";
import "src/interfaces/penpie/IPendleMarketDepositHelper.sol";
import "src/interfaces/penpie/IMasterPenpie.sol";
import "src/interfaces/penpie/IPendleStaking.sol";
import "src/interfaces/penpie/IPendleRewarder.sol";

contract WrappedPenpie is AbstractWrappedPendle {

    using SafeERC20 for IERC20;

    IPendleMarketDepositHelper public immutable DEPOSIT_HELPER;
    IMasterPenpie              internal immutable MASTER_PENPIE;
    IPendleStaking             internal immutable PENDLE_STAKING;
    IPendleRewarder            internal immutable REWARDER;
    IERC20                     internal immutable PNP;

    constructor(
        address investToken_,
        address redeemToken_,
        address market_,
        address router_,
        address oracle_,
        address depositHelper_)
    AbstractWrappedPendle(investToken_, redeemToken_, market_, router_, oracle_)
    {
        DEPOSIT_HELPER = IPendleMarketDepositHelper(depositHelper_);
        MASTER_PENPIE = IMasterPenpie(DEPOSIT_HELPER.masterpenpie());
        PENDLE_STAKING = IPendleStaking(DEPOSIT_HELPER.pendleStaking());
        PNP = IERC20(MASTER_PENPIE.penpieOFT());

        (address rewarder_, bool isActive) = DEPOSIT_HELPER.poolInfo(address(MARKET));

        require(isActive, "IPR");

        REWARDER = IPendleRewarder(rewarder_);
    }

    function initialize(
        string memory name_,
        string memory symbol_,
        address authority_
    ) public initializer {
        __AbstractWrappedPendle_init(name_, symbol_, authority_);
    }

    function _claim(address to) internal virtual override {
        address[] memory stakingTokens = new address[](1);
        stakingTokens[0] = address(MARKET);

        PENDLE_STAKING.harvestMarketReward(stakingTokens[0], address(this), 0);
        MASTER_PENPIE.multiclaim(stakingTokens); // claim all rewards

        (address[] memory _rewardTokens,) = REWARDER.rewardTokenInfos();

        for (uint i = 0; i < _rewardTokens.length; ++i) {
            uint rewardAmount = IERC20(_rewardTokens[i]).balanceOf(address(this));
            if (rewardAmount > 0) {
                IERC20(_rewardTokens[i]).safeTransfer(to, rewardAmount);
            }
        }

        if (address(PNP) != address(0)) {
            uint pnpAmount = PNP.balanceOf(address(this));
            if (pnpAmount > 0) {
                PNP.safeTransfer(to, pnpAmount);
            }
        }

        uint256 _interestAssets = interestAssets();
        if (_interestAssets > 0) {
            DEPOSIT_HELPER.withdrawMarket(address(MARKET), _interestAssets);

            _burnPendleLp(_interestAssets);
            uint256 redeemTokenBalance = REDEEM_TOKEN.balanceOf(address(this));

            REDEEM_TOKEN.safeTransfer(to, redeemTokenBalance);
        }
    }

    function _unstakePendleLp(uint256 lpAmount) internal virtual override {
        DEPOSIT_HELPER.withdrawMarket(address(MARKET), lpAmount);
    }

    function _stakePendleLp(uint256 marketLpAmount) internal virtual override {
        if (marketLpAmount > 0) {
            IERC20(MARKET).forceApprove(address(PENDLE_STAKING), marketLpAmount);
            DEPOSIT_HELPER.depositMarket(address(MARKET), marketLpAmount);
        }
    }

    function _lpBalance() internal view virtual override returns (uint256) {
        return DEPOSIT_HELPER.balance(address(MARKET), address(this));
    }

    function rewardTokens()
        public
        view
        virtual
        override
        returns (address[] memory tokens)
    {
        (address[] memory _rewardTokens,) = REWARDER.rewardTokenInfos();

        bool pnpIsNotZero = address(PNP) != address(0);
        tokens  = new address[](_rewardTokens.length + 1 + (pnpIsNotZero ? 1 : 0)); // with PNP and REDEEM_TOKEN

        for (uint256 i = 0; i < _rewardTokens.length; i++) {
            tokens[i]  = _rewardTokens[i];
        }

        tokens[_rewardTokens.length] = address(REDEEM_TOKEN);
        if (pnpIsNotZero) {
            tokens[_rewardTokens.length + 1] = address(PNP);
        }
    }

    function farmingPool()
        public
        view
        virtual
        returns (address)
    {
        return address(DEPOSIT_HELPER);
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
            '{'
            '"type":"penpiePendle",'
            '"asset":"',Strings.toHexString(nativePool),'",'
            '"market":"',Strings.toHexString(address(MARKET)),'",'
            '"oracle":"',Strings.toHexString(address(ORACLE)),'"'
            '}'
        );
    }

}
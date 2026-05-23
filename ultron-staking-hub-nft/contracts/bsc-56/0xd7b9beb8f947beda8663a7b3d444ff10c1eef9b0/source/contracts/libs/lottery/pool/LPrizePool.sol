// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

import "../../../interfaces/token/IERC20Metadata.sol";
import "../../../interfaces/token/IERC20Bonus.sol";
import "../../../interfaces/IWallet.sol";
import "../../../interfaces/IPlatform.sol";
import "../../../interfaces/IReferral.sol";
import "../../utils/LUtil.sol";
import "../../../utils/structs/EnumerableSetUpgradeable.sol";
import "../../../interfaces/swap-core/IUniswapV2Router02.sol";
import "../../token/SafeERC20.sol";
import "../../../interfaces/IEventEmitter.sol";
import "../../../interfaces/ILottery.sol";

library LPrizePool {
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;
    using SafeERC20 for IERC20Metadata;

    function getPoolsCount() public pure returns (uint8) {
        return 0x6;
    }

    function getCommonPrizePoolPercent() public pure returns (uint16) {
        return 0xC350; // 50000 - 50%
    }

    function getReferrerPurposePercent() public pure returns (uint16) {
        return 0x1388; // 5000 - 5%
    }

    function getRevenuePurposePercent() public pure returns (uint16) {
        return 0x4FD3; // 20435 - 20,435 %
    }

    function getPlatformPurposePercent() public pure returns (uint16) {
        return 0x4C6D; // 19565 - 19,565%
    }

    function getULXBuybackPercent() public pure returns (uint16) {
        return 0x1388; // 5000 - 5%
    }

    function getBurnPurposePercent() public pure returns (uint16) {
        return 0x1388; // 5000 - 5%
    }

    function getBonusPurposePercent() public pure returns (uint16) {
        return 0x0; // 0 - 0%
    }

    function getJackpotPercent() public pure returns (uint16) {
        return 0x5014; // 20500 - 20,50 %
    }

    function getCategoryTwoPercent() public pure returns (uint16) {
        return 0x3C8C; // 15500 - 15,50 %
    }

    function getCategoryThreePercent() public pure returns (uint16) {
        return 0x251C; // 9500 - 9,50%
    }

    function getCategoryFourPercent() public pure returns (uint16) {
        return 0x34BC; // 13500 - 13,50%
    }

    function getCategoryFivePercent() public pure returns (uint16) {
        return 0x7918; // 31000 - 31%
    }

    function getBoosterPercent() public pure returns (uint16) {
        return 0x2710; // 10000 - 10%
    }

    function getBoosterFundLimit() public pure returns (uint256) {
        return 0x2DC6C0; // 3 kk USDT 0x2DC6C0 * 10 ^ 6 && 90 kk ULX 0x55D4A80 * 10 ^ 18
    }

    function getJackpotMinimumAmount() public pure returns (uint256) {
        return 0xF4240; // 1 kk USDT 0xF4240 * 10 ^ 6 && 30 kk ULX 0x1C9C380 * 10 ^ 18
    }

    //The function to distribute funds from prize pool to categories
    bytes4 private constant SELECTOR =
        bytes4(keccak256(bytes("transfer(address,uint256)")));

    function _getToken(address tokenAddress)
        private
        pure
        returns (IERC20Metadata token)
    {
        token = IERC20Metadata(tokenAddress);
    }

    function _getTokenBalanceOf(address tokenAddress, address account)
        private
        view
        returns (uint256 balance)
    {
        balance = _getToken(tokenAddress).balanceOf(account);
    }

    function _getGameConfig(IPlatform platform, address gameAddress)
        private
        view
        returns (
            bool isBonusAvailable,
            bool isBurnAvailable,
            bool isBuybackAvailable,
            bool isRevenueAvailable
        )
    {
        (
            isBonusAvailable,
            isBurnAvailable,
            isBuybackAvailable,
            isRevenueAvailable
        ) = platform.getGameConfig(gameAddress);
    }

    function _emitDistribution(
        IPlatform platform,
        address gameAddress,
        address receiver,
        LUtil.Distribution distribution,
        uint256 amount
    ) private {
        IEventEmitter(platform.getEventEmitterAddress()).emitDistribution(
            ILottery(gameAddress).getCurrentRoundAddress(),
            receiver,
            distribution,
            amount
        );
    }

    function _approve(
        address tokenAddress,
        address approveAddress,
        uint256 amount
    ) private {
        _getToken(tokenAddress).approve(approveAddress, amount);
    }

    function _safeTransfer(
        address tokenAddress,
        address to,
        uint256 amount,
        IPlatform platform,
        address gameAddress,
        LUtil.Distribution distribution
    ) private {
        _getToken(tokenAddress).safeTransfer(to, amount);
        _emitDistribution(platform, gameAddress, to, distribution, amount);
    }

    function _swapWETH(
        address wethAddress,
        address treasuryAddress,
        address routerAddress,
        uint256 amount,
        IPlatform platform,
        address gameAddress,
        address tokenAddress
    ) private {
        address[] memory path = new address[](2);
        path[0] = tokenAddress;
        path[1] = wethAddress;
        uint256[] memory amountsOut = IUniswapV2Router02(routerAddress)
            .getAmountsOut(amount, path);
        if (amountsOut[amountsOut.length - 1] > 0) {
            uint256 amountOutMin = amountsOut[amountsOut.length - 1] -
                (amountsOut[amountsOut.length - 1] * 0xa) /
                0x64;
            _approve(tokenAddress, routerAddress, amount);
            IUniswapV2Router02(routerAddress).swapExactTokensForETH(
                amount,
                amountOutMin,
                path,
                treasuryAddress,
                block.timestamp + 30
            );
            _emitDistribution(
                platform,
                gameAddress,
                treasuryAddress,
                LUtil.Distribution.BUYBACK,
                amount
            );
            _approve(tokenAddress, routerAddress, 0);
        } else {
            _safeTransfer(
                tokenAddress,
                treasuryAddress,
                amount,
                platform,
                gameAddress,
                LUtil.Distribution.BUYBACK
            );
        }
    }

    function _distributePlartformPercent(
        IPlatform platform,
        address gameAddress,
        address tokenAddress,
        uint256 amount,
        address buyer
    ) private returns (uint256 platformPercent, uint256 roundPrize) {
        (bool isBonusAvailable, , , bool isRevenueAvailable) = _getGameConfig(
            platform,
            gameAddress
        );

        platformPercent = getPlatformPurposePercent();
        if (isBonusAvailable) {
            IERC20Bonus bonusToken = IERC20Bonus(
                platform.getBonusTokenAddress(gameAddress)
            );
            bonusToken.transferFromOwner(
                buyer,
                (amount * getBonusPurposePercent()) / 0x186A0
            );
        }

        roundPrize = (amount * getCommonPrizePoolPercent()) / 0x186A0;
        {
            IReferral referralSystem = IReferral(
                platform.getReferralSystemAddress()
            );
            address referrer = referralSystem.getReferrer(buyer);

            if (referrer == address(0)) {
                platformPercent += getReferrerPurposePercent();
            } else {
                _safeTransfer(
                    tokenAddress,
                    referrer,
                    (amount * getReferrerPurposePercent()) / 0x186A0,
                    platform,
                    gameAddress,
                    LUtil.Distribution.REFERRER
                );
            }
            address revenueReceiver = isRevenueAvailable
                ? address(referralSystem)
                : platform.getRevenueTreasuryAddress();
            _safeTransfer(
                tokenAddress,
                revenueReceiver,
                (amount * getRevenuePurposePercent()) / 0x186A0,
                platform,
                gameAddress,
                LUtil.Distribution.REVENUE
            );
        }
    }

    function _distribute(
        EnumerableSetUpgradeable.AddressSet storage wallets,
        IPlatform platform,
        address gameAddress,
        address tokenAddress,
        uint256 platformPercent,
        uint256 amount,
        uint256 roundPrize
    ) private {
        (, bool isBurnAvailable, bool isBuybackAvailable, ) = _getGameConfig(
            platform,
            gameAddress
        );

        IUniswapV2Router02 router = IUniswapV2Router02(
            platform.getRouterAddress()
        );
        _safeTransfer(
            tokenAddress,
            platform.getPlatformOwnerAddress(),
            (amount * platformPercent) / 0x186A0,
            platform,
            gameAddress,
            LUtil.Distribution.PLATFORM
        );

        if (isBurnAvailable) {
            _safeTransfer(
                tokenAddress,
                platform.getBuybackTreasuryAddress(),
                (amount * getBurnPurposePercent()) / 0x186A0,
                platform,
                gameAddress,
                LUtil.Distribution.BURN
            );
        } else if (isBuybackAvailable) {
            _swapWETH(
                router.WETH(),
                platform.getBuybackTreasuryAddress(),
                address(router),
                (amount * getULXBuybackPercent()) / 0x186A0,
                platform,
                gameAddress,
                tokenAddress
            );
        } else {
            _safeTransfer(
                tokenAddress,
                platform.getBuybackReceiverAddress(),
                (amount * getULXBuybackPercent()) / 0x186A0,
                platform,
                gameAddress,
                LUtil.Distribution.BUYBACK_RECEIVER
            );
        }

        _safeTransfer(
            tokenAddress,
            wallets.at(uint256(LUtil.Wallets.CATEGORY2_WALLET)),
            (roundPrize * getCategoryTwoPercent()) / 0x186A0,
            platform,
            gameAddress,
            LUtil.Distribution.CATEGORY2_WALLET
        );
        _safeTransfer(
            tokenAddress,
            wallets.at(uint256(LUtil.Wallets.CATEGORY3_WALLET)),
            (roundPrize * getCategoryThreePercent()) / 0x186A0,
            platform,
            gameAddress,
            LUtil.Distribution.CATEGORY3_WALLET
        );
        _safeTransfer(
            tokenAddress,
            wallets.at(uint256(LUtil.Wallets.CATEGORY4_WALLET)),
            (roundPrize * getCategoryFourPercent()) / 0x186A0,
            platform,
            gameAddress,
            LUtil.Distribution.CATEGORY4_WALLET
        );
        _safeTransfer(
            tokenAddress,
            wallets.at(uint256(LUtil.Wallets.CATEGORY5_WALLET)),
            (roundPrize * getCategoryFivePercent()) / 0x186A0,
            platform,
            gameAddress,
            LUtil.Distribution.CATEGORY5_WALLET
        );
    }

    function _distributeJackpot(
        EnumerableSetUpgradeable.AddressSet storage wallets,
        IPlatform platform,
        address gameAddress,
        address tokenAddress,
        uint256 roundPrize,
        uint256 jackpotRequireMin
    ) private returns (uint256) {
        uint256 boosterFundLimit = getBoosterFundLimit() *
            10**_getToken(tokenAddress).decimals();

        uint256 jackpotAmount = (roundPrize * getJackpotPercent()) / 0x186A0;
        if (
            _getTokenBalanceOf(
                tokenAddress,
                wallets.at(uint256(LUtil.Wallets.BOOSTER_WALLET))
            ) > boosterFundLimit
        ) {
            jackpotAmount += (roundPrize * getBoosterPercent()) / 0x186A0;
        } else {
            if (
                _getTokenBalanceOf(
                    tokenAddress,
                    wallets.at(uint256(LUtil.Wallets.JACKPOT_WALLET))
                ) < jackpotRequireMin
            ) {
                uint256 amount_ = (roundPrize * (getBoosterPercent() / 0x2)) /
                    0x186A0;
                jackpotAmount += amount_;
                _safeTransfer(
                    tokenAddress,
                    wallets.at(uint256(LUtil.Wallets.BOOSTER_WALLET)),
                    amount_,
                    platform,
                    gameAddress,
                    LUtil.Distribution.BOOSTER_WALLET
                );
            } else {
                _safeTransfer(
                    tokenAddress,
                    wallets.at(uint256(LUtil.Wallets.BOOSTER_WALLET)),
                    (roundPrize * getBoosterPercent()) / 0x186A0,
                    platform,
                    gameAddress,
                    LUtil.Distribution.BOOSTER_WALLET
                );
            }
        }
        jackpotRequireMin += jackpotAmount;

        _safeTransfer(
            tokenAddress,
            wallets.at(uint256(LUtil.Wallets.JACKPOT_WALLET)),
            jackpotAmount,
            platform,
            gameAddress,
            LUtil.Distribution.JACKPOT_WALLET
        );
        return jackpotRequireMin;
    }

    function getCategoryAmount(uint256 prizepool, LUtil.WinnerCategory category)
        public
        pure
        returns (uint256 categoryAmount)
    {
        uint256 roundPrize = (prizepool * getCommonPrizePoolPercent()) /
            0x186A0;
        if (category == LUtil.WinnerCategory.CATEGORY2)
            categoryAmount = (roundPrize * getCategoryTwoPercent()) / 0x186A0;
        else if (category == LUtil.WinnerCategory.CATEGORY3)
            categoryAmount = (roundPrize * getCategoryThreePercent()) / 0x186A0;
        else if (category == LUtil.WinnerCategory.CATEGORY4)
            categoryAmount = (roundPrize * getCategoryFourPercent()) / 0x186A0;
        else if (category == LUtil.WinnerCategory.CATEGORY5)
            categoryAmount = (roundPrize * getCategoryFivePercent()) / 0x186A0;
    }

    function distribute(
        EnumerableSetUpgradeable.AddressSet storage wallets,
        address platformAddress,
        address gameAddress,
        address buyer,
        uint256 amount,
        uint256 jackpotRequireMin
    ) external returns (uint256) {
        require(amount > 0, "PRIZEPOOL: Amount must be more than 0");
        address tokenAddress = IPlatform(platformAddress).getTokenAddress(
            gameAddress
        );

        (
            uint256 platformPercent,
            uint256 roundPrize
        ) = _distributePlartformPercent(
                IPlatform(platformAddress),
                gameAddress,
                tokenAddress,
                amount,
                buyer
            );

        _distribute(
            wallets,
            IPlatform(platformAddress),
            gameAddress,
            tokenAddress,
            platformPercent,
            amount,
            roundPrize
        );

        return
            _distributeJackpot(
                wallets,
                IPlatform(platformAddress),
                gameAddress,
                tokenAddress,
                roundPrize,
                jackpotRequireMin
            );
    }

    function approve(
        EnumerableSetUpgradeable.AddressSet storage wallets,
        LUtil.Wallets wallet,
        address roundAddress,
        uint256 amount
    ) internal {
        IWallet(wallets.at(uint256(wallet))).approve(roundAddress, amount);
    }
}

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.7.6;
pragma abicoder v2;

import { IPerpPositionManager } from "./interface/IPerpPositionManager.sol";
import { IVault } from "@perp/curie-contract/contracts/interface/IVault.sol";
import { IClearingHouse } from "@perp/curie-contract/contracts/interface/IClearingHouse.sol";
import { IAccountBalance } from "@perp/curie-contract/contracts/interface/IAccountBalance.sol";
import { IClearingHouseConfig } from "@perp/curie-contract/contracts/interface/IClearingHouseConfig.sol";
import { Exchange } from "@perp/curie-contract/contracts/Exchange.sol";
import { IMarketRegistry } from "@perp/curie-contract/contracts/interface/IMarketRegistry.sol";
import { IIndexPrice } from "@perp/curie-contract/contracts/interface/IIndexPrice.sol";
import { IBaseToken } from "@perp/curie-contract/contracts/interface/IBaseToken.sol";
import { PerpMath } from "@perp/curie-contract/contracts/lib/PerpMath.sol";
import { PerpSafeCast } from "@perp/curie-contract/contracts/lib/PerpSafeCast.sol";
import { AddressUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol";
import { ContextUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol";
import { IERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import { PerpPositionManagerStorageV1 } from "./storage/PerpPositionManagerStorage.sol";
import { SafeMathUpgradeable } from "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";
import { SafeERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/SafeERC20Upgradeable.sol";
import { FullMath } from "@uniswap/v3-core/contracts/libraries/FullMath.sol";

contract PerpPositionManager is IPerpPositionManager, ContextUpgradeable, PerpPositionManagerStorageV1 {
    using AddressUpgradeable for address;
    using SafeMathUpgradeable for uint256;
    using FullMath for uint256;
    using PerpMath for uint256;
    using PerpMath for int256;
    using PerpSafeCast for uint256;
    using PerpSafeCast for int256;

    //
    // MODIFIER
    //
    modifier onlyCaller() {
        // PPM_NC: not caller
        require(_msgSender() == _caller, "PPM_NC");
        _;
    }

    //
    // INITIALIZER
    //
    function initialize(address clearingHouseArg, address vBaseTokenArg) external initializer {
        __Context_init();
        _caller = _msgSender();

        // PPM_CHNC: clearingHouse is not a contract
        require(clearingHouseArg.isContract(), "PPM_CHNC");
        _clearingHouse = clearingHouseArg;

        _vault = IClearingHouse(_clearingHouse).getVault();
        // PPM_VNC: vault is not a contract
        require(_vault.isContract(), "PPM_VNC");

        _clearingHouseConfig = IClearingHouse(_clearingHouse).getClearingHouseConfig();
        // PPM_CHCNC: clearingHouseConfig is not a contract
        require(_clearingHouseConfig.isContract(), "PPM_CHCNC");

        _accountBalance = IClearingHouse(_clearingHouse).getAccountBalance();
        // PPM_ACNC: accountBalance is not a contract
        require(_accountBalance.isContract(), "PPM_ACNC");

        // validate vBaseToken
        address exchange = IClearingHouse(_clearingHouse).getExchange();
        address marketRegistry = Exchange(exchange).getMarketRegistry();
        // PPM_NP: invalid virtual baseToken
        require(IMarketRegistry(marketRegistry).hasPool(vBaseTokenArg), "PPM_IVB");
        _vBaseToken = vBaseTokenArg;

        IERC20Upgradeable(IVault(_vault).getSettlementToken()).approve(_vault, type(uint256).max);
    }

    //
    // EXTERNAL NON-VIEW
    //

    function setCaller(address newCaller) external onlyCaller {
        // PPM_ZA: zero address
        address oldCaller = _caller;
        require(newCaller != address(0), "PPM_ZA");
        _caller = newCaller;
        emit UpdateCaller(oldCaller, newCaller);
    }

    function deposit(address token, uint256 amount) external override onlyCaller {
        SafeERC20Upgradeable.safeTransferFrom(IERC20Upgradeable(token), _caller, address(this), amount);
        IVault(_vault).deposit(token, amount);
    }

    function withdraw(address token, uint256 amount) external override onlyCaller {
        IVault(_vault).withdraw(token, amount);
        SafeERC20Upgradeable.safeTransfer(IERC20Upgradeable(token), _caller, amount);
    }

    function openPosition(OpenPositionParams memory params)
        external
        override
        onlyCaller
        returns (uint256 base, uint256 quote)
    {
        return
            IClearingHouse(_clearingHouse).openPosition(
                IClearingHouse.OpenPositionParams({
                    baseToken: _vBaseToken,
                    isBaseToQuote: params.isBaseToQuote,
                    isExactInput: params.isExactInput,
                    amount: params.amount,
                    oppositeAmountBound: 0,
                    deadline: block.timestamp,
                    sqrtPriceLimitX96: 0,
                    referralCode: 0
                })
            );
    }

    function openPosition(OpenPositionFullParams memory params)
        external
        override
        onlyCaller
        returns (uint256 base, uint256 quote)
    {
        return
            IClearingHouse(_clearingHouse).openPosition(
                IClearingHouse.OpenPositionParams({
                    baseToken: _vBaseToken,
                    isBaseToQuote: params.isBaseToQuote,
                    isExactInput: params.isExactInput,
                    amount: params.amount,
                    oppositeAmountBound: params.oppositeAmountBound,
                    deadline: block.timestamp,
                    sqrtPriceLimitX96: params.sqrtPriceLimitX96,
                    referralCode: 0
                })
            );
    }

    //
    // EXTERNAL VIEW
    //

    function getCaller() external view override returns (address) {
        return _caller;
    }

    function getBaseToken() external view override returns (address) {
        return _vBaseToken;
    }

    function getSettlementToken() external view override returns (address) {
        return IVault(_vault).getSettlementToken();
    }

    function getTakerPositionSize() external view override returns (int256 size) {
        return IAccountBalance(_accountBalance).getTakerPositionSize(address(this), _vBaseToken);
    }

    function getAccountValueSafe_6() external view override returns (int256) {
        // account value is based on mark price
        int256 accountValue = IVault(_vault).getAccountValue(address(this));
        _requireAccountValueSafe(accountValue);

        return accountValue;
    }

    function isMarginSufficientByRatio(uint24 ratio) external view override returns (bool) {
        int256 accountValue_18 = IClearingHouse(_clearingHouse).getAccountValue(address(this));
        int256 marginRequirement = IAccountBalance(_accountBalance)
            .getTotalAbsPositionValue(address(this))
            .mulRatio(ratio)
            .toInt256();
        return accountValue_18 >= marginRequirement;
    }

    /// @dev Rough size formula =
    /// (totalPositionValue * targetMarginRatio - accountValue) / (markPrice * targetMarginRatio)
    /// @return 0 when there's no need for deleverage; else, the position size to be deleveraged
    function getDeleveragedPositionSize(uint24 targetMarginRatio) external view override returns (uint256) {
        uint256 totalPositionValue = IAccountBalance(_accountBalance).getTotalAbsPositionValue(address(this));

        int256 accountValue = IClearingHouse(_clearingHouse).getAccountValue(address(this));
        _requireAccountValueSafe(accountValue);
        uint256 accountValueAbs = accountValue.toUint256();

        uint256 totalPositionValueMultipliedByTargetMarginRatio = totalPositionValue.mulRatio(targetMarginRatio);
        uint256 markPrice = getMarkPrice();
        uint256 divisor = markPrice.mulRatio(targetMarginRatio);

        return
            totalPositionValueMultipliedByTargetMarginRatio < accountValueAbs
                ? 0
                : totalPositionValueMultipliedByTargetMarginRatio.sub(accountValueAbs).mulDiv(1 ether, divisor);
    }

    //
    // PUBLIC VIEW
    //

    function getMarkPrice() public view override returns (uint256) {
        uint256 markPrice = IBaseToken(_vBaseToken).isClosed()
            ? IBaseToken(_vBaseToken).getClosedPrice()
            : IAccountBalance(_accountBalance).getMarkPrice(_vBaseToken);
        // PPM_ZMP: zero markPrice
        require(markPrice > 0, "PPM_ZMP");
        return markPrice;
    }

    //
    // INTERNAL VIEW
    //

    function _requireAccountValueSafe(int256 accountValue) internal pure {
        // PPM_AVLZ: account value less than zero
        require(accountValue >= 0, "PPM_AVLZ");
    }
}

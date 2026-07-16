// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IERC20} from "../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {IERC4626} from "../lib/openzeppelin-contracts/contracts/interfaces/IERC4626.sol";
import "../lib/openzeppelin-contracts/contracts/access/AccessControl.sol";
import {IOracle} from "../lib/morpho-blue/src/interfaces/IOracle.sol";
import {MarketParamsLib} from "../lib/morpho-blue/src/libraries/MarketParamsLib.sol";
import {IMorpho, Market, Position, MarketParams, Id} from "../lib/morpho-blue/src/interfaces/IMorpho.sol";
import {IMorphoSupplyCollateralCallback, IMorphoRepayCallback} from "../lib/morpho-blue/src/interfaces/IMorphoCallbacks.sol";
import {MathLib} from "../lib/morpho-blue/src/libraries/MathLib.sol";
import {MorphoBalancesLib} from "../lib/morpho-blue/src/libraries/periphery/MorphoBalancesLib.sol";

interface ITeller {
    function buy(uint256 _amount) external returns (uint256);
    function sell(uint256 _amount) external returns (uint256);
    function buyPreview(
        uint256 _amount
    ) external view returns (uint256 payout, uint256 fee, int256 price);
    function sellPreview(
        uint256 _amount
    ) external view returns (uint256 payout, uint256 fee, int256 price);
}

contract UsycBot is
    AccessControl,
    IMorphoSupplyCollateralCallback,
    IMorphoRepayCallback
{
    using MarketParamsLib for MarketParams;
    using MathLib for uint256;

    // Create a new role identifier for the minter role
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
    bytes32 public constant CALLBACK_ROLE = keccak256("CALLBACK_ROLE");

    IERC20 public immutable pyusd =
        IERC20(0x6c3ea9036406852006290770BEdFcAbA0e23A0e8);
    IERC20 public immutable usyc =
        IERC20(0x136471a34f6ef19fE571EFFC1CA711fdb8E49f2b);
    IMorpho public immutable morpho =
        IMorpho(0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb);
    ITeller teller = ITeller(0x0a5EA26fdD38CF2Acb06Dc64198374C337879DAb);

    address internal immutable STEAKHOUSE_FUND =
        0x44Ac1031d245D965fe5F016da9Ba643CD79F95f3;
    address internal immutable STEAKHOUSE_SIGNER_1 =
        0x0D61C8b6CA9669A36F351De3AE335e9689dd9C5b;
    address internal immutable STEAKHOUSE_MORPHO =
        0x255c7705e8BB334DfCae438197f7C4297988085a;
    address private immutable STEAKHOUSE_SMOL_OPS =
        0x29d4CDFee8F533af8529A9e1517b580E022874f7;

    Id public immutable MARKET_ID;

    bytes internal NULL_BYTES = "";

    MarketParams public marketParams;

    constructor(Id marketId) {
        MARKET_ID = marketId;
        _grantRole(DEFAULT_ADMIN_ROLE, STEAKHOUSE_FUND);

        _grantRole(OPERATOR_ROLE, STEAKHOUSE_FUND);
        _grantRole(OPERATOR_ROLE, STEAKHOUSE_SIGNER_1);
        _grantRole(OPERATOR_ROLE, STEAKHOUSE_SMOL_OPS);
        _grantRole(OPERATOR_ROLE, msg.sender);

        // Only Morpho and DssFlashLoan can call the callback
        _grantRole(CALLBACK_ROLE, address(morpho));

        // Grant admin to change permissions
        _setRoleAdmin(OPERATOR_ROLE, DEFAULT_ADMIN_ROLE);
        _setRoleAdmin(CALLBACK_ROLE, DEFAULT_ADMIN_ROLE);

        // Allow the Steakhouse fund multisig to manage exposure in case it's needed.
        marketParams = morpho.idToMarketParams(MARKET_ID);
    }

    /******************************************
     * EXPOSE HIGH LEVEL FUNCTIONS
     ******************************************/

    /**
     * @notice make sure unwind was called first
     * @notice max to borrow in USDC terms (6 decimals)
     */
    function wind(uint256 toBorrow) external onlyRole(OPERATOR_ROLE) {
        (uint256 collateral, , ) = teller.buyPreview(toBorrow);

        morpho.supplyCollateral(
            marketParams,
            collateral,
            address(this),
            abi.encode(toBorrow)
        );
    }

    function onMorphoSupplyCollateral(
        uint256 assets,
        bytes calldata data
    ) external onlyRole(CALLBACK_ROLE) {
        uint256 toBorrow = abi.decode(data, (uint256));

        morpho.borrow(marketParams, toBorrow, 0, address(this), address(this));

        _pyusdToUsyc(toBorrow);

        usyc.approve(address(morpho), assets);
    }

    function unwind(uint256 toRepay) external onlyRole(OPERATOR_ROLE) {
        morpho.repay(marketParams, toRepay, 0, address(this), abi.encode(0));
    }

    function unwindAll() external onlyRole(OPERATOR_ROLE) {
        Position memory position = morpho.position(MARKET_ID, address(this));

        morpho.repay(
            marketParams,
            0,
            position.borrowShares,
            address(this),
            abi.encode(0)
        );
    }

    function onMorphoRepay(
        uint256 amount,
        bytes calldata
    ) external onlyRole(CALLBACK_ROLE) {
        // We use 18 digits  because the teller is truncating the last 4
        (uint256 sellPrice, , ) = teller.sellPreview(10 ** 18);

        uint256 collateral = amount.mulDivUp(10 ** 18, sellPrice);

        morpho.withdrawCollateral(
            marketParams,
            collateral,
            address(this),
            address(this)
        );

        _usycToPyusd(collateral);

        pyusd.approve(address(morpho), amount);
    }

    /******************************************
     * VIEW FUNCTIONS
     ******************************************/

    function isUnwinded() external view returns (bool) {
        Position memory position = morpho.position(MARKET_ID, address(this));
        return position.borrowShares == 0;
    }

    function sharesBorrowed() external view returns (uint256) {
        Position memory position = morpho.position(MARKET_ID, address(this));
        return position.borrowShares;
    }

    /******************************************
     * EXPOSE LOW LEVEL FUNCTIONS
     ******************************************/

    function borrow(uint256 amount) external onlyRole(OPERATOR_ROLE) {
        _borrow(amount);
    }

    function repayAssets(uint256 amount) external onlyRole(OPERATOR_ROLE) {
        _repayAssets(amount);
    }

    function repayShares(uint256 shares) external onlyRole(OPERATOR_ROLE) {
        _repayShares(shares);
    }

    function pyusdToUsyc(uint256 amount) external onlyRole(OPERATOR_ROLE) {
        _pyusdToUsyc(amount);
    }

    function usycToPyusd(uint256 amount) external onlyRole(OPERATOR_ROLE) {
        _usycToPyusd(amount);
    }

    function supplyCollateral(uint256 amount) external onlyRole(OPERATOR_ROLE) {
        _supplyCollateral(amount);
    }

    function withdrawCollateral(
        uint256 amount
    ) external onlyRole(OPERATOR_ROLE) {
        _withdrawCollaral(amount);
    }

    function withdrawAllCollateral() external onlyRole(OPERATOR_ROLE) {
        Position memory position = morpho.position(MARKET_ID, address(this));
        _withdrawCollaral(position.collateral);
    }

    /******************************************
     * RECOVER AND UNSTUCK FUNCTION
     ******************************************/
    function recover(
        IERC20 token,
        address where
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        token.transfer(where, token.balanceOf(address(this)));
    }

    function recover(
        IERC20 token,
        address where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(
            amount <= token.balanceOf(address(this)),
            "Insufficient balance"
        );
        token.transfer(where, amount);
    }

    function recoverETH(
        address payable where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(amount <= address(this).balance, "Insufficient balance");
        where.transfer(amount);
    }

    function approve(
        IERC20 token,
        address where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        token.approve(where, amount);
    }

    /******************************************
     * LOW LEVEL FUNCTIONS
     ******************************************/
    /**
     * @param amount PYUSD so 6 decimals
     */
    function _borrow(uint256 amount) internal {
        morpho.borrow(marketParams, amount, 0, address(this), address(this));
    }

    /**
     * @param amount PYUSD so 6 decimals
     */
    function _repayAssets(uint256 amount) internal {
        pyusd.approve(address(morpho), amount);
        morpho.repay(marketParams, amount, 0, address(this), NULL_BYTES);
    }

    /**
     * @param amount shares so 18 decimals
     */
    function _repayShares(uint256 amount) internal {
        pyusd.approve(address(morpho), type(uint256).max);
        morpho.repay(marketParams, 0, amount, address(this), NULL_BYTES);
        pyusd.approve(address(morpho), 0);
    }

    /**
     * @param amount in USYC term so 6 decimals
     */
    function _supplyCollateral(uint256 amount) internal {
        usyc.approve(address(morpho), amount);
        morpho.supplyCollateral(
            marketParams,
            amount,
            address(this),
            NULL_BYTES
        );
    }

    /**
     * @param amount in USYC term so 6 decimals
     */
    function _withdrawCollaral(uint256 amount) internal {
        morpho.withdrawCollateral(
            marketParams,
            amount,
            address(this),
            address(this)
        );
    }

    /**
     * @dev Buy USYC for amount in PYUSD
     * @param amount PYUSD so 6 decimals
     */
    function _pyusdToUsyc(uint256 amount) internal returns (uint256) {
        pyusd.approve(address(teller), amount);
        return teller.buy(amount);
    }

    /**
     * @dev Sell amount of USYC
     * @param amount in USYC term so 6 decimals
     */
    function _usycToPyusd(uint256 amount) internal returns (uint256) {
        usyc.approve(address(teller), amount);
        return teller.sell(amount);
    }

    function _max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    function _min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a <= b ? a : b;
    }
}

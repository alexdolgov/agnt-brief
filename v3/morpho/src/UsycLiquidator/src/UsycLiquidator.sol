// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IERC20} from "../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {IERC4626} from "../lib/openzeppelin-contracts/contracts/interfaces/IERC4626.sol";
import {AccessControl} from "../lib/openzeppelin-contracts/contracts/access/AccessControl.sol";
import {IMorphoLiquidateCallback} from "../lib/morpho-blue/src/interfaces/IMorphoCallbacks.sol";
import {IOracle} from "../lib/morpho-blue/src/interfaces/IOracle.sol";
import {MarketParamsLib} from "../lib/morpho-blue/src/libraries/MarketParamsLib.sol";
import {IMorpho, Market, Position, MarketParams, Id} from "../lib/morpho-blue/src/interfaces/IMorpho.sol";
import {IMorphoSupplyCollateralCallback, IMorphoRepayCallback} from "../lib/morpho-blue/src/interfaces/IMorphoCallbacks.sol";
import {MathLib} from "../lib/morpho-blue/src/libraries/MathLib.sol";
import {MorphoBalancesLib} from "../lib/morpho-blue/src/libraries/periphery/MorphoBalancesLib.sol";
import {ITeller} from "./interfaces/ITeller.sol";

contract UsycLiquidator is AccessControl, IMorphoLiquidateCallback {
    using MarketParamsLib for MarketParams;
    using MathLib for uint256;

    address private constant STEAKHOUSE_MORPHO =
        0x255c7705e8BB334DfCae438197f7C4297988085a;

    IERC20 public immutable pyusd =
        IERC20(0x6c3ea9036406852006290770BEdFcAbA0e23A0e8);
    IERC20 public immutable usyc =
        IERC20(0x136471a34f6ef19fE571EFFC1CA711fdb8E49f2b);
    IMorpho public immutable morpho =
        IMorpho(0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb);

    ITeller private immutable teller;

    Id private immutable marketId;
    MarketParams private marketParams;

    constructor(Id marketId_, ITeller teller_) {
        marketId = marketId_;
        teller = teller_;
        marketParams = morpho.idToMarketParams(marketId);
        _grantRole(DEFAULT_ADMIN_ROLE, STEAKHOUSE_MORPHO);
    }

    /// @notice liquidate a borrower for shares. Anyone can call but profit remains in the contract
    /// @param borrower quantity of shares to liquidate
    function liquidate(address borrower, uint256 shares) external {
        morpho.liquidate(marketParams, borrower, 0, shares, "0");
    }

    function onMorphoLiquidate(
        uint256 repaidAssets,
        bytes calldata
    ) external onlyMorpho {
        _usycToPyusd(usyc.balanceOf(address(this)));
        pyusd.approve(address(morpho), repaidAssets);
    }

    modifier onlyMorpho() {
        require(
            msg.sender == address(morpho),
            "msg.sender should be Morpho Blue"
        );
        _;
    }

    /**
     * @dev Sell amount of USYC for PYUSD using the teller.
     * @param amount in USYC term so 6 decimals
     */
    function _usycToPyusd(uint256 amount) internal returns (uint256) {
        usyc.approve(address(teller), amount);
        return teller.sell(amount);
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
}

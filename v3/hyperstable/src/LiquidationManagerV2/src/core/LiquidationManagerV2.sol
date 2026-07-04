// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Ownable} from "solady/auth/Ownable.sol";
import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";
import {IPositionManager} from "../interfaces/IPositionManager.sol";
import {IVault} from "../interfaces/IVault.sol";
import {ILiquidationBuffer} from "../interfaces/ILiquidationBuffer.sol";

contract LiquidationManagerV2 is Ownable {
    using FixedPointMathLib for uint256;

    struct LiquidationValues {
        uint256 debtToRepay;
        uint256 CR;
        uint256 sharePrice;
        uint256 bufferSurplus;
        uint256 userSurplus;
        uint256 missingShares;
        uint256 sharesToLiquidate;
        uint256 sharesToRedeem;
        uint256 liquidated;
    }

    struct LiquidationConfiguration {
        uint256 liquidatorRewardBps;
        uint256 bufferRewardsBps;
    }

    IPositionManager public immutable positionManager;
    ILiquidationBuffer public immutable liquidationBuffer;

    mapping(uint8 => LiquidationConfiguration) public liquidationConfiguration;

    event Liquidation(
        uint8 indexed vault,
        address indexed positionOwner,
        address indexed liquidator,
        uint256 debt,
        uint256 collateral,
        uint256 bufferSurplus,
        uint256 liquidatorReward,
        uint256 missingShares
    );

    event NewRewardsBps(
        uint8 indexed vault,
        uint256 oldLiquidatorRewardsBps,
        uint256 oldBufferRewardsBps,
        uint256 newLiquidatorRewardsBps,
        uint256 newBuferRewardsBps
    );

    error OnlyOwnerOrPositionManager();
    error InvalidVault();
    error NothingToLiquidate();
    error NotEnoughRewards();

    constructor(address _positionManagerAddress, address _liquidationBufferAddress) {
        _initializeOwner(msg.sender);
        positionManager = IPositionManager(_positionManagerAddress);
        liquidationBuffer = ILiquidationBuffer(_liquidationBufferAddress);
    }

    modifier onlyOwnerOrPositionManager() {
        if (msg.sender != owner() && msg.sender != address(positionManager)) {
            revert OnlyOwnerOrPositionManager();
        }
        _;
    }

    function setRewardsBps(uint8 _vaultIndex, uint256 _newLiquidatorRewardBps, uint256 _newBufferRewardsBps)
        external
        onlyOwnerOrPositionManager
    {
        LiquidationConfiguration storage config = liquidationConfiguration[_vaultIndex];

        emit NewRewardsBps(
            _vaultIndex,
            config.liquidatorRewardBps,
            config.bufferRewardsBps,
            _newLiquidatorRewardBps,
            _newBufferRewardsBps
        );

        config.liquidatorRewardBps = _newLiquidatorRewardBps;
        config.bufferRewardsBps = _newBufferRewardsBps;
    }

    function liquidate(uint8 _index, address _positionOwner, uint256 _debtToRepay)
        external
        returns (LiquidationValues memory)
    {
        return _liquidate(_index, _positionOwner, msg.sender, _debtToRepay);
    }

    function _liquidate(uint8 _index, address _positionOwner, address _liquidator, uint256 _debtToRepay)
        internal
        returns (LiquidationValues memory)
    {
        IPositionManager manager = positionManager;

        (IPositionManager.VaultData memory vaultData, IPositionManager.PositionData memory positionData) =
            manager.initLiquidation(_index, _positionOwner);

        LiquidationValues memory values =
            _getLiquidationValues(vaultData, positionData, liquidationConfiguration[_index], _debtToRepay);

        if (values.CR >= vaultData.MCR) {
            revert NothingToLiquidate();
        }

        // register liquidation
        manager.finishLiquidation(_index, _positionOwner, values.debtToRepay, values.sharesToLiquidate);

        // burn debt from liquidator
        manager.DEBT_TOKEN().burn(_liquidator, values.debtToRepay);

        // send assets to liquidator
        values.liquidated = IVault(vaultData.addr).redeem(values.sharesToRedeem, _liquidator, address(manager));

        if (values.bufferSurplus > 0) {
            ILiquidationBuffer buffer = liquidationBuffer;
            IVault(vaultData.addr).transferFrom(address(manager), address(buffer), values.bufferSurplus);
            buffer.notifyDeposit(_index, values.bufferSurplus);

            assert(values.missingShares == 0);

            emit Liquidation(
                _index,
                _positionOwner,
                _liquidator,
                _debtToRepay,
                values.sharesToLiquidate,
                values.bufferSurplus,
                values.liquidated,
                values.missingShares
            );

            // if there is a buffer surplus then there are no missing shares
            return values;
        }

        uint256 missingShares = values.missingShares;

        // take from buffer
        if (missingShares > 0) {
            ILiquidationBuffer buffer = liquidationBuffer;
            uint256 inBuffer = buffer.deposits(_index);

            if (inBuffer > 0) {
                uint256 toRedeem = inBuffer > missingShares ? missingShares : inBuffer;
                values.liquidated += buffer.redeem(_index, _liquidator, toRedeem);

                missingShares -= toRedeem;
            }
        }

        // take from vault
        if (missingShares > 0) {
            uint256 totalShares = IVault(vaultData.addr).totalSupply();
            if (totalShares > 0) {
                uint256 sharesToTake = totalShares > missingShares ? missingShares : totalShares;
                uint256 assetsToTake = IVault(vaultData.addr).convertToAssets(sharesToTake);
                IVault(vaultData.addr).take(_liquidator, assetsToTake);

                values.liquidated += assetsToTake;
                missingShares -= sharesToTake;
            }
        }

        emit Liquidation(
            _index,
            _positionOwner,
            _liquidator,
            _debtToRepay,
            values.sharesToLiquidate,
            values.bufferSurplus,
            values.liquidated,
            values.missingShares
        );

        return values;
    }

    function _getLiquidationValues(
        IPositionManager.VaultData memory _vaultData,
        IPositionManager.PositionData memory _positionData,
        LiquidationConfiguration memory _liquidationConfig,
        uint256 _debtToRepay
    ) internal view returns (LiquidationValues memory) {
        LiquidationValues memory values;

        values.sharePrice = IVault(_vaultData.addr).sharePrice();

        values.CR = _calculateCr(_positionData.collateralSnapshot.mulWad(values.sharePrice), _positionData.debtSnapshot);

        if (values.CR >= _vaultData.MCR) {
            return values;
        }

        values.debtToRepay = FixedPointMathLib.min(_debtToRepay, _positionData.debtSnapshot);

        uint256 equivalentCollateral = values.debtToRepay.divWad(values.sharePrice);
        uint256 overcollateralization = equivalentCollateral.mulWad(_vaultData.MCR - 1e18);
        uint256 requiredCollateral =
            equivalentCollateral + overcollateralization.mulWad(_liquidationConfig.liquidatorRewardBps);
        uint256 liquidatedCollateral =
            _positionData.collateralSnapshot.mulDiv(values.debtToRepay, _positionData.debtSnapshot);

        if (liquidatedCollateral < requiredCollateral) {
            // the amount of shares that are needed to cover the required collateral
            values.missingShares = requiredCollateral - liquidatedCollateral;
            // the shares that are going to be redeemed
            values.sharesToRedeem = liquidatedCollateral;
        } else {
            // liquidated collateral is enough to pay liquidator bonus
            uint256 surplus = liquidatedCollateral - requiredCollateral;
            values.bufferSurplus = surplus.mulWad(_liquidationConfig.bufferRewardsBps);
            values.userSurplus = surplus - values.bufferSurplus;
            values.sharesToRedeem = liquidatedCollateral - values.bufferSurplus - values.userSurplus;
        }

        values.sharesToLiquidate = liquidatedCollateral - values.userSurplus;

        return values;
    }

    function _calculateCr(uint256 _collateralInUSD, uint256 _debt) internal pure returns (uint256) {
        if (_debt == 0) {
            return type(uint256).max;
        }

        return _collateralInUSD.mulDiv(1e18, _debt);
    }
}

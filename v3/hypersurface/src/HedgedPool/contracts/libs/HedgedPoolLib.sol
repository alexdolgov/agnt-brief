// SPDX-License-Identifier: BUSL-1.1

pragma solidity >=0.8.18;

import "../interfaces/CustomErrors.sol";
import "../interfaces/ICoreWriter.sol";
import "../interfaces/INonfungiblePositionManager.sol";
import "../interfaces/IWrappedToken.sol";
import "./Math.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import {IOtoken, IOracle, GammaTypes, IController, IOtokenFactory, IMarginCalculator} from "../interfaces/IGamma.sol";

library HedgedPoolLib {
    /// Use safe ERC20 functions for any token transfers since people don't follow the ERC20 standard */
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    /// @notice Settle Vault post-expiration
    function settle(address controller, uint256 vaultId) external {
        IController.ActionArgs[] memory actions = new IController.ActionArgs[](
            1
        );

        actions[0] = IController.ActionArgs(
            IController.ActionType.SettleVault,
            address(this), // owner
            address(this), // address to transfer to
            address(0), // not used
            vaultId, // vaultId
            0, // not used
            0, // not used
            "" // not used
        );

        IController(controller).operate(actions);
    }

    /// @notice Redeem expired long option
    function _redeem(
        address controller,
        address oToken,
        uint256 amount
    ) internal {
        IController.ActionArgs[] memory actions = new IController.ActionArgs[](
            1
        );

        actions[0] = IController.ActionArgs(
            IController.ActionType.Redeem,
            address(0), // not used
            address(this), // address to send profits to
            oToken, // address of otoken
            0, // not used
            amount, // otoken balance
            0, // not used
            "" // not used
        );
        IController(controller).operate(actions);
    }

    /// @notice open margin vault
    function openVault(address controller) external returns (uint256 vaultId) {
        IController.ActionArgs[] memory actions = new IController.ActionArgs[](
            1
        );

        vaultId =
            (IController(controller).getAccountVaultCounter(address(this))) +
            1;

        actions[0] = IController.ActionArgs(
            IController.ActionType.OpenVault,
            address(this), // owner
            address(this), // receiver
            address(0), // asset, otoken
            vaultId, // vaultId
            0, // amount
            0, //index
            "" //data
        );

        IController(controller).operate(actions);

        return vaultId;
    }

    /// @notice add short position to a vault
    function createShort(
        address controller,
        uint256 vaultId,
        address oToken,
        uint256 oTokenIndex,
        uint256 amount,
        address collateralAsset,
        uint256 depositAmount
    ) external {
        IController.ActionArgs[] memory actions;
        if (depositAmount == 0) {
            // no collateral to deposit
            actions = new IController.ActionArgs[](1);

            actions[0] = IController.ActionArgs(
                IController.ActionType.MintShortOption,
                address(this), // owner
                address(this), // address to transfer to
                oToken, // option address
                vaultId, // vaultId
                amount, // amount
                oTokenIndex, //index
                "" //data
            );
        } else {
            actions = new IController.ActionArgs[](2);

            actions[0] = IController.ActionArgs(
                IController.ActionType.DepositCollateral,
                address(this), // owner
                address(this), // address to transfer from
                collateralAsset, // deposited asset
                vaultId, // vaultId
                depositAmount, // amount
                0, //index
                "" //data
            );

            actions[1] = IController.ActionArgs(
                IController.ActionType.MintShortOption,
                address(this), // owner
                address(this), // address to transfer to
                oToken, // option address
                vaultId, // vaultId
                amount, // amount
                oTokenIndex, //index
                "" //data
            );
        }

        IController(controller).operate(actions);
    }

    /// @notice Withdraw collateral from vault
    function withdrawCollateral(
        address controller,
        uint256 vaultId,
        address collateralAsset,
        uint256 withdrawalAmount
    ) public {
        IController.ActionArgs[] memory actions = new IController.ActionArgs[](
            1
        );

        actions[0] = IController.ActionArgs(
            IController.ActionType.WithdrawCollateral,
            address(this), // owner
            address(this), // address to transfer to
            collateralAsset, // withdrawn asset
            vaultId, // vaultId
            withdrawalAmount, // amount
            0, //index
            "" //data
        );

        IController(controller).operate(actions);
    }

    /// @notice Deposit collateral into vault
    function depositCollateral(
        address controller,
        uint256 vaultId,
        address collateralAsset,
        uint256 depositAmount
    ) public {
        IController.ActionArgs[] memory actions = new IController.ActionArgs[](
            1
        );

        actions[0] = IController.ActionArgs(
            IController.ActionType.DepositCollateral,
            address(this), // owner
            address(this), // address to transfer from
            collateralAsset, // deposited asset
            vaultId, // vaultId
            depositAmount, // amount
            0, //index
            "" //data
        );

        IController(controller).operate(actions);
    }

    /// @notice deposit long into the vault
    function depositLong(
        address controller,
        address marginPool,
        uint256 vaultId,
        address oToken,
        uint256 oTokenIndex,
        uint256 amount
    ) external {
        IController.ActionArgs[] memory actions = new IController.ActionArgs[](
            1
        );

        // approve oToken to be transferred
        IERC20(oToken).approve(marginPool, amount);

        actions[0] = IController.ActionArgs(
            IController.ActionType.DepositLongOption,
            address(this), // owner
            address(this), // address to transfer from
            oToken, // option address
            vaultId, // vaultId
            amount, // amount
            oTokenIndex, //index
            "" //data
        );

        IController(controller).operate(actions);
    }

    /// @notice withdraw long from the vault
    function withdrawLong(
        address controller,
        uint256 vaultId,
        address oToken,
        uint256 oTokenIndex,
        uint256 amount,
        address collateralAsset,
        uint256 depositAmount
    ) internal {
        IController.ActionArgs[] memory actions;
        if (depositAmount == 0) {
            // no collateral to deposit
            actions = new IController.ActionArgs[](1);

            actions[0] = IController.ActionArgs(
                IController.ActionType.WithdrawLongOption,
                address(this), // owner
                address(this), // address to transfer to
                oToken, // option address
                vaultId, // vaultId
                amount, // amount
                oTokenIndex, //index
                "" //data
            );
        } else {
            // deposit collateral to match margin shortfall
            actions = new IController.ActionArgs[](2);

            actions[0] = IController.ActionArgs(
                IController.ActionType.DepositCollateral,
                address(this), // owner
                address(this), // address to transfer from
                collateralAsset, // deposited asset
                vaultId, // vaultId
                depositAmount, // amount
                0, //index
                "" //data
            );

            actions[1] = IController.ActionArgs(
                IController.ActionType.WithdrawLongOption,
                address(this), // owner
                address(this), // address to transfer to
                oToken, // option address
                vaultId, // vaultId
                amount, // amount
                oTokenIndex, //index
                "" //data
            );
        }

        IController(controller).operate(actions);
    }

    /// @notice find oToken or create it if doesn't exist
    function findOrCreateOToken(
        address factory,
        address underlyingAsset,
        address strikeAsset,
        address collateralAsset,
        uint256 strikePrice,
        uint256 expiry,
        bool isPut,
        bool mustExist
    ) external returns (address oToken) {
        oToken = IOtokenFactory(factory).getOtoken(
            underlyingAsset,
            strikeAsset,
            collateralAsset,
            strikePrice,
            expiry,
            isPut
        );

        if (oToken == address(0)) {
            require(!mustExist, "oToken doesn't exist");

            oToken = IOtokenFactory(factory).createOtoken(
                underlyingAsset,
                strikeAsset,
                collateralAsset,
                strikePrice,
                expiry,
                isPut
            );
        }

        return oToken;
    }

    function settleExpiry(
        uint256 expiry,
        EnumerableSet.AddressSet storage underlyingTokens,
        mapping(address => mapping(uint256 => address[]))
            storage oTokensByExpiry,
        address controller,
        mapping(address => mapping(bool => uint256)) storage notionalExposure,
        EnumerableSet.AddressSet storage activeOTokens
    ) public {
        for (uint iu = 0; iu < underlyingTokens.length(); iu++) {
            address underlying = underlyingTokens.at(iu);

            // Redeem and remove options from the pool
            for (
                uint io = 0;
                io < oTokensByExpiry[underlying][expiry].length;
                io++
            ) {
                _settleOtoken(
                    oTokensByExpiry[underlying][expiry][io],
                    controller,
                    notionalExposure,
                    activeOTokens
                );
            }
        }
    }

    function settleOtokens(
        address[] calldata oTokens,
        address controller,
        mapping(address => mapping(bool => uint256)) storage notionalExposure,
        EnumerableSet.AddressSet storage activeOTokens
    ) external {
        for (uint256 i = 0; i < oTokens.length; i++) {
            _settleOtoken(
                oTokens[i],
                controller,
                notionalExposure,
                activeOTokens
            );
        }
    }

    function _settleOtoken(
        address oTokenAddress,
        address controller,
        mapping(address => mapping(bool => uint256)) storage notionalExposure,
        EnumerableSet.AddressSet storage activeOTokens
    ) internal {
        IOtoken oToken = IOtoken(oTokenAddress);
        uint oTokenBalance = IERC20(address(oToken)).balanceOf(address(this));
        if (oTokenBalance > 0) {
            address underlying = oToken.underlyingAsset();
            _redeem(controller, address(oToken), oTokenBalance);

            if (oToken.isPut()) {
                notionalExposure[underlying][true] -= oTokenBalance;
            } else {
                notionalExposure[underlying][false] -= oTokenBalance;
            }
        }

        activeOTokens.remove(oTokenAddress);
    }

    function totalPoolExposure(
        mapping(address => mapping(bool => uint256)) storage notionalExposure,
        EnumerableSet.AddressSet storage underlyingTokens,
        address oracle
    ) external view returns (uint256) {
        uint256 totalPoolExposureUsd = 0;
        for (uint256 i = 0; i < underlyingTokens.length(); i++) {
            address underlying = underlyingTokens.at(i);
            uint256 underlyingPrice = IOracle(oracle).getPrice(underlying);
            totalPoolExposureUsd +=
                (notionalExposure[underlying][true] * underlyingPrice) /
                1e8;
            totalPoolExposureUsd +=
                (notionalExposure[underlying][false] * underlyingPrice) /
                1e8;
        }
        return totalPoolExposureUsd;
    }
}

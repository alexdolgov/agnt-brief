// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.18;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol";
import "../interfaces/IHedgedPool.sol";
import "../interfaces/IAddressBook.sol";
import "../libs/HedgedPoolLib.sol";
import "../interfaces/IOrderUtil.sol";
import "../libs/Math.sol";
import "../interfaces/CustomErrors.sol";
import {IOtoken, GammaTypes, IController, IOtokenFactory, IMarginCalculator} from "../interfaces/IGamma.sol";

// Change this contract to a portfolio manager
contract TradeExecutor is OwnableUpgradeable, ERC1155Holder {
    /// Use safe ERC20 functions for any token transfers since people don't follow the ERC20 standard */
    using SafeERC20 for IERC20;

    IAddressBook public addressBook;

    /// @notice trader => vaultCounter
    mapping(address => uint256) public marginVaultCounters;

    /// @dev List of permitted pool addresses
    mapping(address => bool) public authorizedPools;

    event MarginVaultOpened(address indexed trader, uint256 vaultId);

    event AuthorizedPoolSet(address indexed pool, bool isAuthorized);

    event AddressBookUpdated(address indexed newAddressBook);

    function __TradeExecutor_init(
        address _addresBookAddress
    ) public initializer {
        addressBook = IAddressBook(_addresBookAddress);

        __Ownable_init();
    }

    /// Initialize the contract, and create an lpToken to track ownership
    function setAddressBook(address _addressBookAddress) external onlyOwner {
        addressBook = IAddressBook(_addressBookAddress);
        emit AddressBookUpdated(_addressBookAddress);
    }

    struct LocalVars {
        IController controller;
        IMarginCalculator calculator;
        IOtokenFactory otokenFactory;
        IOrderUtil.Order order;
        IOrderUtil.OptionLeg leg;
        address marginPoolAddress;
        IERC20 strikeAsset;
        IERC20 collateralAsset;
        uint8 collateralDecimals;
        address[] oTokens;
        address traderAddress;
        uint256 traderVaultId;
        uint256 traderDeposit;
    }

    /// @notice executes a trade from a maker pool
    /// @param order the order to execute
    /// @param traderAddress the address of the trader
    /// @param traderVaultId the vaultId of the trader
    /// @param autoCreateVault whether to create a vault for the trader if it doesn't exist
    function executeTrade(
        IOrderUtil.Order calldata order,
        address traderAddress,
        uint256 traderVaultId,
        bool autoCreateVault,
        bool isAuthorizedMM
    ) external returns (address[] memory) {
        require(authorizedPools[msg.sender], "not authorized pool");

        LocalVars memory vars;

        vars.order = order;
        vars.leg = vars.order.legs[0];
        vars.traderAddress = traderAddress;
        vars.traderVaultId = traderVaultId;

        // calculate margin required for long legs of the order
        vars.controller = IController(addressBook.getController());
        vars.calculator = IMarginCalculator(addressBook.getMarginCalculator());
        vars.otokenFactory = IOtokenFactory(addressBook.getOtokenFactory());
        vars.marginPoolAddress = addressBook.getMarginPool();

        vars.strikeAsset = IHedgedPool(vars.order.poolAddress).strikeToken();
        // by default for puts collateral asset is the same as pool's collateral
        // for calls collateral asset is the same as underlying
        if (vars.leg.isPut) {
            vars.collateralAsset = IHedgedPool(vars.order.poolAddress)
                .collateralToken();
        } else {
            vars.collateralAsset = IERC20(vars.order.collateral);
        }
        vars.collateralDecimals = IERC20MetadataUpgradeable(
            address(vars.collateralAsset)
        ).decimals();

        vars.oTokens = new address[](vars.order.legs.length);

        if (vars.leg.amount < 0) {
            // sell
            require(
                traderVaultId > 0 || (autoCreateVault && traderVaultId == 0),
                "!vaultId"
            );

            // create oToken if required
            vars.oTokens[0] = HedgedPoolLib.findOrCreateOToken(
                address(vars.otokenFactory),
                vars.order.underlying,
                address(vars.strikeAsset),
                address(vars.collateralAsset),
                vars.leg.strike,
                vars.leg.expiration,
                vars.leg.isPut,
                true
            );

            // open vault if needed
            if (autoCreateVault) {
                vars.traderVaultId = _openMarginVault(vars.traderAddress);
            }

            // check trader collateral required
            {
                GammaTypes.Vault memory vault = vars.controller.getVault(
                    vars.traderAddress,
                    vars.traderVaultId
                );
                require(
                    vault.shortOtokens.length == 0 ||
                        vault.shortOtokens[0] == vars.oTokens[0],
                    "short oToken mismatch"
                );

                if (vault.shortOtokens.length == 0) {
                    vault.shortOtokens = new address[](1);
                    vault.shortOtokens[0] = vars.oTokens[0];
                    vault.shortAmounts = new uint256[](1);
                    vault.shortAmounts[0] = uint256(-vars.leg.amount);
                } else {
                    vault.shortAmounts[0] =
                        vault.shortAmounts[0] +
                        uint256(-vars.leg.amount);
                }
                (uint256 excessCollateral, bool isExcess) = vars
                    .calculator
                    .getExcessCollateral(vault, 0);
                if (!isExcess) {
                    vars.traderDeposit = excessCollateral;
                }
            }

            // operate: deposit collateral, mint otoken
            IController.ActionArgs[]
                memory actions = new IController.ActionArgs[](
                    vars.traderDeposit > 0 ? 2 : 1
                );

            // deposit collateral
            if (vars.traderDeposit > 0) {
                if (vars.leg.isPut) {
                    vars.collateralAsset.safeTransferFrom(
                        vars.traderAddress,
                        address(this),
                        uint256(vars.traderDeposit) -
                            uint256(-vars.leg.premium) +
                            vars.leg.fee
                    );
                    vars.collateralAsset.safeTransferFrom(
                        msg.sender,
                        address(this),
                        uint256(-vars.leg.premium) - vars.leg.fee
                    );
                } else {
                    vars.collateralAsset.safeTransferFrom(
                        vars.traderAddress,
                        address(this),
                        uint256(vars.traderDeposit)
                    );
                }
                vars.collateralAsset.safeApprove(
                    vars.marginPoolAddress,
                    uint256(vars.traderDeposit)
                );

                actions[0] = IController.ActionArgs(
                    IController.ActionType.DepositCollateral,
                    vars.traderAddress, // owner
                    address(this), // address to transfer from
                    address(vars.collateralAsset),
                    vars.traderVaultId,
                    uint256(vars.traderDeposit),
                    0,
                    ""
                );
            }

            // mint oToken
            actions[actions.length - 1] = IController.ActionArgs(
                IController.ActionType.MintShortOption,
                vars.traderAddress,
                msg.sender, // send oToken to pool
                address(vars.oTokens[0]),
                vars.traderVaultId,
                uint256(-vars.leg.amount),
                0,
                ""
            );

            vars.controller.operate(actions);
        } else {
            // buy

            vars.oTokens[0] = HedgedPoolLib.findOrCreateOToken(
                address(vars.otokenFactory),
                vars.order.underlying,
                address(vars.strikeAsset),
                address(vars.collateralAsset),
                vars.leg.strike,
                vars.leg.expiration,
                vars.leg.isPut,
                true // oToken must exist
            );

            if (isAuthorizedMM && !autoCreateVault && traderVaultId == 0) {
                IERC20(vars.oTokens[0]).safeTransferFrom(
                    msg.sender,
                    vars.traderAddress,
                    uint256(vars.leg.amount)
                );
            } else {
                require(traderVaultId > 0 && !autoCreateVault, "!vaultId");

                IController.ActionArgs[]
                    memory actions = new IController.ActionArgs[](1);

                IERC20(vars.oTokens[0]).safeTransferFrom(
                    msg.sender,
                    address(this),
                    uint256(vars.leg.amount)
                );
                actions[0] = IController.ActionArgs(
                    IController.ActionType.BurnShortOption,
                    vars.traderAddress,
                    address(this), // burn oToken from pool
                    address(vars.oTokens[0]),
                    vars.traderVaultId,
                    uint256(vars.leg.amount),
                    0,
                    ""
                );

                vars.controller.operate(actions);
            }
        }

        return (vars.oTokens);
    }

    function _openMarginVault(
        address _owner
    ) internal returns (uint256 vaultId) {
        IController controller = IController(addressBook.getController());
        vaultId = marginVaultCounters[_owner] + 1;

        IController.ActionArgs[] memory actions = new IController.ActionArgs[](
            1
        );
        actions[0] = IController.ActionArgs(
            IController.ActionType.OpenVault,
            _owner,
            address(0),
            address(0),
            vaultId,
            0,
            0,
            "0"
        );

        controller.operate(actions);

        marginVaultCounters[_owner] += 1;

        emit MarginVaultOpened(_owner, vaultId);

        return vaultId;
    }

    function setAuthorizedPool(
        address _pool,
        bool _isAuthorized
    ) external onlyOwner {
        authorizedPools[_pool] = _isAuthorized;
        emit AuthorizedPoolSet(_pool, _isAuthorized);
    }
}

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.30;

import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

struct DebtIn {
    address asset; // debt token filler provides
    uint256 amount; // token units
}

struct CollOut {
    address asset; // collateral token filler prefers to receive
    uint256 amount; // token units
}

interface IRfqEngine {
    function rfqFillFlash(address user, DebtIn[] calldata debtIn, CollOut[] calldata collOut, bytes calldata data)
        external;
}

interface IFlash {
    function onFlash(bytes calldata data) external;
}

contract Liquidator is UUPSUpgradeable, AccessControlUpgradeable, IFlash {
    using SafeERC20 for IERC20;

    bytes32 public constant LIQUIDATOR_ROLE = keccak256("LIQUIDATOR_ROLE");
    bytes32 public constant WITHDRAWER_ROLE = keccak256("WITHDRAWER_ROLE");

    IRfqEngine public rfqEngine;

    event Withdrawn(address withdrawer, IERC20 token, uint256 value);
    event RfqEngineSet(IRfqEngine rfqEngine);

    error NotRfqEngine();
    error InvalidInputLengths();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initialize contract after the deployment.
    function initialize(address _admin, IRfqEngine _rfqEngine) external initializer {
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        rfqEngine = _rfqEngine;
    }

    /// @notice Run flash liquidation on a predefined RfqEngine contract.
    function liquidate(address user, DebtIn[] calldata debtIn, CollOut[] calldata collOut, bytes calldata data)
        external
        onlyRole(LIQUIDATOR_ROLE)
    {
        // set allowance for positionManager to pull tokens
        for (uint256 i = 0; i < debtIn.length; i++) {
            IERC20(debtIn[i].asset).forceApprove(address(rfqEngine), type(uint256).max);
        }
        rfqEngine.rfqFillFlash(user, debtIn, collOut, data);
    }

    /// @notice The callback function called during the flash liquidation.
    function onFlash(bytes calldata data) external {
        require(msg.sender == address(rfqEngine), NotRfqEngine());

        // Decode swap instructions
        (
            address[] memory tokens, // token to approve for each swap
            uint256[] memory amounts, // amount to approve for each swap
            address[] memory routers, // router for each swap
            bytes[] memory calls // call data for each swap
        ) = abi.decode(data, (address[], uint256[], address[], bytes[]));

        require(
            tokens.length == amounts.length && tokens.length == routers.length && tokens.length == calls.length,
            InvalidInputLengths()
        );

        // Approve token and make a swap
        for (uint256 i = 0; i < tokens.length; i++) {
            IERC20(tokens[i]).forceApprove(routers[i], amounts[i]);

            (bool ok, bytes memory ret) = routers[i].call(calls[i]);
            if (!ok) {
                assembly {
                    revert(add(ret, 32), mload(ret)) // propagate revert
                }
            }
        }
    }

    /// @notice Withdraw a token accumulated as the liquidation reward in the contract.
    function withdraw(IERC20 token, uint256 value) external onlyRole(WITHDRAWER_ROLE) {
        token.safeTransfer(msg.sender, value);
        emit Withdrawn(msg.sender, token, value);
    }

    /// @notice Set address of the RfqEngine contract.
    function setRfqEngine(IRfqEngine _rfqEngine) external onlyRole(DEFAULT_ADMIN_ROLE) {
        rfqEngine = _rfqEngine;
        emit RfqEngineSet(_rfqEngine);
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}
}


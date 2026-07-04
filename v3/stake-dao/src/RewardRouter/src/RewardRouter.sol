// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IRewardReceiver} from "src/interfaces/IRewardReceiver.sol";
import {IProtocolController} from "src/interfaces/IProtocolController.sol";

/// @title RewardRouterV2
/// @notice Minimal router that never keeps balances: helpers pull from receivers and immediately forward.
///         Callers batch operations via `execute`, which dispatches to the helpers below.
contract RewardRouter {
    using SafeERC20 for IERC20;

    //////////////////////////////////////////////////////
    // --- ERRORS & EVENTS
    //////////////////////////////////////////////////////

    error Unauthorized();
    error InvalidMerkleDistributor();
    error InvalidCallData();
    error NoRewards();

    event RewardsDistributed(address indexed gauge);
    event RewardsPulledToMerkle(address indexed gauge, address indexed token, uint128 amount);
    event RewardsPulledToVault(address indexed gauge, address indexed token);
    event MerkleDistributorUpdated(address indexed oldDistributor, address indexed newDistributor);

    //////////////////////////////////////////////////////
    // --- IMMUTABLES / STORAGE
    //////////////////////////////////////////////////////

    IProtocolController public immutable PROTOCOL_CONTROLLER;
    address public merkleDistributor;

    //////////////////////////////////////////////////////
    // --- MODIFIERS
    //////////////////////////////////////////////////////

    bytes4 internal constant SELECTOR_DISTRIBUTE_ALL = bytes4(keccak256("distributeAll(address)"));
    bytes4 internal constant SELECTOR_DISTRIBUTE = bytes4(keccak256("distribute(address,address)"));
    bytes4 internal constant SELECTOR_PULL_TO_MERKLE = bytes4(keccak256("pullToMerkle(address,address)"));

    modifier onlyAllowed() {
        require(PROTOCOL_CONTROLLER.allowed(address(this), msg.sender, msg.sig), Unauthorized());
        _;
    }

    //////////////////////////////////////////////////////
    // --- CONSTRUCTOR
    //////////////////////////////////////////////////////

    constructor(address _protocolController, address _merkleDistributor) {
        PROTOCOL_CONTROLLER = IProtocolController(_protocolController);
        merkleDistributor = _merkleDistributor;
    }

    //////////////////////////////////////////////////////
    // --- ROUTING ENTRY POINT
    //////////////////////////////////////////////////////

    /// @notice Execute a batch of routing operations.
    /// @dev Each payload should encode one of the helper selectors below (e.g. `pullToMerkle`, `pullAndDistribute`, `distributeAll`).
    function execute(bytes[] calldata calls) external onlyAllowed {
        for (uint256 i; i < calls.length; ) {
            bytes calldata callData = calls[i];

            require(callData.length >= 4, InvalidCallData());

            bytes4 selector = bytes4(callData[:4]);

            if (selector == SELECTOR_PULL_TO_MERKLE) {
                (address gauge, address token) = abi.decode(callData[4:], (address, address));
                _pullToMerkle(gauge, token);
            } else if (selector == SELECTOR_DISTRIBUTE) {
                (address gauge, address token) = abi.decode(callData[4:], (address, address));
                _distribute(gauge, token);
            } else if (selector == SELECTOR_DISTRIBUTE_ALL) {
                address gauge = abi.decode(callData[4:], (address));
                _distributeAll(gauge);
            } else {
                revert InvalidCallData();
            }

            unchecked {
                ++i;
            }
        }
    }

    //////////////////////////////////////////////////////
    // --- ROUTING HELPERS (CALL TARGETS)
    //////////////////////////////////////////////////////

    function _pullToMerkle(address gauge, address token) internal {
        address distributor = merkleDistributor;
        require(distributor != address(0), InvalidMerkleDistributor());

        IRewardReceiver receiver = IRewardReceiver(PROTOCOL_CONTROLLER.rewardReceiver(gauge));
        uint128 amount = receiver.pullRewards(token);
        require(amount != 0, NoRewards());

        IERC20(token).safeTransfer(distributor, amount);
        emit RewardsPulledToMerkle(gauge, token, amount);
    }


    function _distribute(address gauge, address token) internal {
        IRewardReceiver receiver = IRewardReceiver(PROTOCOL_CONTROLLER.rewardReceiver(gauge));
        receiver.distributeRewardToken(IERC20(token));

        emit RewardsPulledToVault(gauge, token);
    }

    function _distributeAll(address gauge) internal {
        IRewardReceiver receiver = IRewardReceiver(PROTOCOL_CONTROLLER.rewardReceiver(gauge));
        receiver.distributeRewards();

        emit RewardsDistributed(gauge);
    }

    //////////////////////////////////////////////////////
    // --- ADMIN
    //////////////////////////////////////////////////////

    function setMerkleDistributor(address newDistributor) external onlyAllowed {
        address oldDistributor = merkleDistributor;
        merkleDistributor = newDistributor;

        emit MerkleDistributorUpdated(oldDistributor, newDistributor);
    }
}

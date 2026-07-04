// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {SidecarFactory} from "src/SidecarFactory.sol";
import {IAuraBooster} from "@interfaces/aura/IAuraBooster.sol";
import {Clones} from "@openzeppelin/contracts/proxy/Clones.sol";
import {AuraSidecarL2} from "src/integrations/balancer/L2/AuraSidecarL2.sol";

/// @title AuraSidecarFactoryL2
/// @author Stake DAO
/// @custom:github @stake-dao
/// @custom:contact contact@stakedao.org

/// @notice L2 variant of AuraSidecarFactory.
///
///         Key differences from mainnet AuraSidecarFactory:
///         - Encodes rewardReceiver in immutable args (offset 20)
///         - Uses same IAuraBooster interface (BoosterLite has compatible poolInfo)
contract AuraSidecarFactoryL2 is SidecarFactory {
    /// @notice Aura Booster contract address
    address public immutable BOOSTER;

    /// @notice Error emitted when the pool is shutdown
    error PoolShutdown();

    /// @notice Error emitted when the arguments are invalid
    error InvalidArguments();

    /// @notice Error emitted when the reward receiver is not set
    error VaultNotDeployed();

    constructor(address _implementation, address _protocolController, address _booster)
        SidecarFactory(bytes4(keccak256("BALANCER")), _implementation, _protocolController)
    {
        BOOSTER = _booster;
    }

    /// @notice Convenience function to create a sidecar with a uint256 pid parameter
    function create(address gauge, uint256 pid) external returns (address sidecarAddress) {
        bytes memory args = abi.encode(pid);
        return create(gauge, args);
    }

    /// @notice Validates the gauge and arguments for Aura
    function _isValidGauge(address gauge, bytes memory args) internal view override {
        require(args.length == 32, InvalidArguments());

        uint256 pid = abi.decode(args, (uint256));

        // Get the pool info from Aura Booster
        (,, address balancerGauge,,, bool isShutdown) = IAuraBooster(BOOSTER).poolInfo(pid);

        // Ensure the pool is not shutdown
        if (isShutdown) revert PoolShutdown();

        // Ensure the gauge matches
        if (balancerGauge != gauge) revert InvalidGauge();
    }

    /// @notice Creates an AuraSidecarL2 for a gauge
    function _create(address gauge, bytes memory args) internal override returns (address sidecarAddress) {
        uint256 pid = abi.decode(args, (uint256));

        // Get the BPT token and base reward pool from Aura Booster
        (address bptToken,,, address baseRewardPool,,) = IAuraBooster(BOOSTER).poolInfo(pid);

        address rewardReceiver = PROTOCOL_CONTROLLER.rewardReceiver(gauge);
        require(rewardReceiver != address(0), VaultNotDeployed());

        // Encode the immutable arguments for the clone
        // Layout: [bptToken (20), rewardReceiver (20), baseRewardPool (20), pid (32)]
        bytes memory data = abi.encodePacked(bptToken, rewardReceiver, baseRewardPool, pid);

        // Create a deterministic salt
        bytes32 salt = keccak256(data);

        // Clone the implementation contract
        sidecarAddress = Clones.cloneDeterministicWithImmutableArgs(IMPLEMENTATION, data, salt);

        // Initialize the sidecar
        AuraSidecarL2(sidecarAddress).initialize();

        // Register as valid allocation target
        PROTOCOL_CONTROLLER.setValidAllocationTarget(gauge, sidecarAddress);

        return sidecarAddress;
    }
}

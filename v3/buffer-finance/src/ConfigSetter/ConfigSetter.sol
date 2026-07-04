pragma solidity 0.8.4;

import "Interfaces.sol";
import "AccessControl.sol";

contract ConfigSetter is AccessControl {
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant UNPAUSER_ROLE = keccak256("UNPAUSER_ROLE");

    constructor() {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function pause(
        address[] calldata markets_v2,
        address[] calldata markets_v2_5
    ) external onlyRole(PAUSER_ROLE) {
        for (uint256 i = 0; i < markets_v2.length; i++) {
            IBufferBinaryOptionPauserV2 market = IBufferBinaryOptionPauserV2(
                markets_v2[i]
            );
            if (market.isPaused()) {
                continue;
            }
            market.toggleCreation();
        }

        for (uint256 i = 0; i < markets_v2_5.length; i++) {
            IBufferBinaryOptionPauserV2_5 market = IBufferBinaryOptionPauserV2_5(
                    markets_v2_5[i]
                );
            if (market.isPaused()) {
                continue;
            }
            market.setIsPaused();
        }
    }

    function unpause(
        address[] calldata markets_v2,
        address[] calldata markets_v2_5
    ) external onlyRole(UNPAUSER_ROLE) {
        for (uint256 i = 0; i < markets_v2.length; i++) {
            IBufferBinaryOptionPauserV2 market = IBufferBinaryOptionPauserV2(
                markets_v2[i]
            );
            if (!market.isPaused()) {
                continue;
            }
            market.toggleCreation();
        }

        for (uint256 i = 0; i < markets_v2_5.length; i++) {
            IBufferBinaryOptionPauserV2_5 market = IBufferBinaryOptionPauserV2_5(
                    markets_v2_5[i]
                );
            if (!market.isPaused()) {
                continue;
            }
            market.setIsPaused();
        }
    }
}

pragma solidity 0.7.3;

import "./AlphaStrategyAvalanche.sol";

contract StrategyAdapterAvalancheV2 is AlphaStrategyAvalanche {
    constructor() public {}

    function initialize(
        address _multisigWallet,
        address _rewardManager,
        address _vault,
        address _underlying,
        uint256 _poolId
    ) public initializer {
        AlphaStrategyAvalanche.initializeAlphaStrategy(
            _multisigWallet,
            _rewardManager,
            _underlying,
            _vault,
            address(0x188bED1968b795d5c9022F6a0bb5931Ac4c18F00), // Masterchef #2
            _poolId,
            24
        );
    }
}
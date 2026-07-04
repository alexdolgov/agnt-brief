// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts-0.8/access/Ownable.sol";

interface IGaugeVoting {
    function transferOwnership(address newOwner) external;

    function addGauge(
        address gauge_addr,
        uint256 gauge_type,
        uint256 _weight,
        uint256 _pid,
        address _masterChef,
        uint256 _chainId,
        uint256 _boostMultiplier,
        uint256 _maxVoteCap
    ) external;

    function addGaugeV4(
        bytes32 gauge_poolId,
        address gauge_poolManager,
        uint256 gauge_type,
        uint256 _weight,
        uint256 _chainId,
        uint256 _boostMultiplier,
        uint256 _maxVoteCap
    ) external;
}

contract GaugeVotingBulk is Ownable {
    struct GaugeConfig {
        address gauge_addr;
        uint256 gauge_type;
        uint256 _weight;
        uint256 _pid;
        address _masterChef;
        uint256 _chainId;
        uint256 _boostMultiplier;
        uint256 _maxVoteCap;
    }

    struct GaugeConfigV4 {
        bytes32 gauge_poolId;
        address gauge_poolManager;
        uint256 gauge_type;
        uint256 _weight;
        uint256 _chainId;
        uint256 _boostMultiplier;
        uint256 _maxVoteCap;
    }

    address public gaugeVotingAddress;

    event GaugeVotingAddressUpdated(address indexed sender, address indexed gaugeVotingAddress);

    error GaugeParametersInvalid();

    function updateGaugeVotingAddress(address _newAddress) external onlyOwner {
        require(_newAddress != address(0), "address should not be empty");
        gaugeVotingAddress = _newAddress;
        emit GaugeVotingAddressUpdated(msg.sender, _newAddress);
    }

    function addGauges(GaugeConfig[] calldata _gaugeList) external onlyOwner {
        uint256 len = _gaugeList.length;
        for (uint256 i = 0; i < len; i++) {
            GaugeConfig memory g = _gaugeList[i];
            if (g.gauge_addr == address(0) || g._chainId == 0) {
                revert GaugeParametersInvalid();
            }
            IGaugeVoting(gaugeVotingAddress).addGauge(
                g.gauge_addr,
                g.gauge_type,
                g._weight,
                g._pid,
                g._masterChef,
                g._chainId,
                g._boostMultiplier,
                g._maxVoteCap
            );
        }
    }

    function addGaugesV4(GaugeConfigV4[] calldata _gaugeV4List) external onlyOwner {
        uint256 len = _gaugeV4List.length;
        for (uint256 i = 0; i < len; i++) {
            GaugeConfigV4 memory g = _gaugeV4List[i];
            if (g.gauge_poolManager == address(0) || g._chainId == 0) {
                revert GaugeParametersInvalid();
            }
            IGaugeVoting(gaugeVotingAddress).addGaugeV4(
                g.gauge_poolId,
                g.gauge_poolManager,
                g.gauge_type,
                g._weight,
                g._chainId,
                g._boostMultiplier,
                g._maxVoteCap
            );
        }
    }

    function transferBackOwner(address _owner) external onlyOwner {
        IGaugeVoting(gaugeVotingAddress).transferOwnership(_owner);
    }
}
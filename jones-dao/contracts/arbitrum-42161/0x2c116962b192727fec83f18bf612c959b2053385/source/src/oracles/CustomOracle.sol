// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;
pragma abicoder v2;

import {IAggregatorV3} from "src/interfaces/swap/IAggregatorV3.sol";
import {UpgradeableGovernable} from "src/governance/UpgradeableGovernable.sol";

contract CustomOracle is IAggregatorV3, UpgradeableGovernable {
    IAggregatorV3 public first_oracle;
    IAggregatorV3 public second_oracle;

    string private description_;

    function initialize(address _first_oracle, address _second_oracle, string memory _description)
        external
        initializer
    {
        __Governable_init(msg.sender);

        first_oracle = IAggregatorV3(_first_oracle);
        second_oracle = IAggregatorV3(_second_oracle);
        description_ = _description;
    }

    function decimals() external view override returns (uint8) {
        return second_oracle.decimals();
    }

    function description() external view override returns (string memory) {
        return description_;
    }

    function version() external view override returns (uint256) {
        return 1;
    }

    function latestRoundData()
        public
        view
        override
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        (roundId, answer, startedAt, updatedAt, answeredInRound) = first_oracle.latestRoundData();

        (, int256 price,,,) = second_oracle.latestRoundData();

        answer = int256((uint256(answer) * uint256(price)) / (10 ** first_oracle.decimals()));
    }

    function getRoundData(uint80 _roundId)
        external
        view
        override
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        (roundId, answer, startedAt, updatedAt, answeredInRound) = first_oracle.latestRoundData();
    }

    /// GOVERNOR

    function updateOracles(address _first_oracle, address _second_oracle) external onlyGovernor {
        first_oracle = IAggregatorV3(_first_oracle);
        second_oracle = IAggregatorV3(_second_oracle);
    }
}

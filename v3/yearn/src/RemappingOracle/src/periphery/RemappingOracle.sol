/**
 *Submitted for verification at Etherscan.io on 2024-11-26
*/

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

interface ICompounder {
    function vault() external view returns (address);
    function management() external view returns (address);
    function decimals() external view returns (uint256);
}

interface IAprOracle {
     function getWeightedAverageApr(
        address _vault,
        int256 _delta
    ) external view returns (uint256);
}

contract RemappingOracle {

    address public constant APR_ORACLE = 0x1981AD9F44F2EA9aDd2dC4AD7D075c102C70aF92;

    mapping (address => address) public remappings;

    function aprAfterDebtChange(
        address _strategy,
        int256 _delta
    ) external view virtual returns (uint256 _apr) {
        address vault = remappings[_strategy];

        if (vault == address(0)) {
            vault = ICompounder(_strategy).vault();
        }

        uint256 baseDecimals = ICompounder(_strategy).decimals();
        uint256 targetDecimals = ICompounder(vault).decimals();

        if (baseDecimals > targetDecimals) {
            _delta = _delta / int256(10 ** (baseDecimals - targetDecimals));
        } else if (baseDecimals < targetDecimals) {
            _delta = _delta * int256(10 ** (targetDecimals - baseDecimals));
        }

        _apr = IAprOracle(APR_ORACLE).getWeightedAverageApr(vault, _delta);
    }

    function setRemapping(address _strategy, address _vault) external {
        require(msg.sender == ICompounder(_strategy).management());
        remappings[_strategy] = _vault;
    }

}
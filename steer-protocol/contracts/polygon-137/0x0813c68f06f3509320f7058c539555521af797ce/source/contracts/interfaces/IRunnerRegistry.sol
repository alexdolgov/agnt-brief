// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.12;

interface IRunnerRegistry {
    /// @dev MUST be triggered when the runner amount is changed.
    event RunnerAmountChanged(address runner, uint256 amount);

    function bond(uint256 _amount) external;

    function bondAmount() external view returns (uint256);

    function bondToken() external view returns (address);

    function isRunner(address _runner) external view returns (bool);

    function keeperRegistry() external view returns (address);

    function runners(address) external view returns (uint256);

    function slash(address _runner, uint256 _amount) external;

    function unbond(uint256 _amount) external;

    function withdrawFreeCoin(uint256 amount) external;
}

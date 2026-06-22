// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

interface MasterMinter {

    function getMinterManager() external view returns (address);

    function configureMinter(uint256 _newAllowance) external returns (bool);

    function configureController(address _controller, address _worker) external;

    function getWorker(address _controller) external view returns (address);

    function incrementMinterAllowance(uint256 _allowanceIncrement) external returns (bool);

    function decrementMinterAllowance(uint256 _allowanceDecrement) external returns (bool);

}

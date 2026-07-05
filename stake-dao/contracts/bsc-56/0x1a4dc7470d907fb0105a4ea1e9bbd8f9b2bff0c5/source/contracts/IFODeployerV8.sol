// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin-4.5.0/contracts/access/Ownable.sol";
import "@openzeppelin-4.5.0/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin-4.5.0/contracts/token/ERC20/utils/SafeERC20.sol";

import "./IFOInitializableV8.sol";

/**
 * @title IFODeployerV8
 */
contract IFODeployerV8 is Ownable {
    using SafeERC20 for IERC20;

    uint256 public constant MAX_BUFFER_SECONDS = 86400 * 7; // (7 days on BSC)
    uint256 public constant MAX_BUFFER_SECONDS_VESTING = 86400 * 365; // (365 days on BSC)

    address public currIFOAddress;

    event AdminTokenRecovery(address indexed tokenRecovered, uint256 amount);
    event NewIFOContract(address indexed ifoAddress);

    error LpTokenSameWithOfferingToken();
    error AdminAddressIsNull();
    error EndTimeTooFar();
    error StartTimeMustInferiorToEndTime();
    error StartTimeMustGreaterThanCurrentBlockTime();
    error VestingStartTimeMustGreaterThanEndTime();
    error VestingStartTimeTooFar();

    /**
     * @notice It creates the IFO contract and initializes the contract.
     * @dev It can only be called once.
     * @param _addresses: [0] lpToken [1] offeringToken [2] pancakeProfile [3] iCake [4] adminAddress [5] admissionProfile
     * @param _startAndEndTimestamps: [0] startTimestamp [1] endTimestamp
     * @param _maxPoolId: maximum id of pools, sometimes only public sale exist
     * @param _pointThreshold: threshold of user's point in pancake profile
     * @param _vestingStartTime: the start timestamp of vesting
     */
    function createIFO(
        address[] calldata _addresses,
        uint256[] calldata _startAndEndTimestamps,
        uint8 _maxPoolId,
        uint256 _pointThreshold,
        uint256 _vestingStartTime
    ) external onlyOwner {
        require(IERC20(_addresses[0]).totalSupply() >= 0);
        require(IERC20(_addresses[1]).totalSupply() >= 0);
        if (_addresses[0] == _addresses[1]) revert LpTokenSameWithOfferingToken();
        if (_addresses[4] == address(0)) revert AdminAddressIsNull();
        if (_startAndEndTimestamps[1] >= (block.timestamp + MAX_BUFFER_SECONDS)) revert EndTimeTooFar();
        if (_startAndEndTimestamps[0] >= _startAndEndTimestamps[1]) revert StartTimeMustInferiorToEndTime();
        if (_startAndEndTimestamps[0] <= block.timestamp) revert StartTimeMustGreaterThanCurrentBlockTime();
        if (_vestingStartTime != 0) {
            if (_vestingStartTime < _startAndEndTimestamps[1] + 30 days) revert VestingStartTimeMustGreaterThanEndTime();
            if (_vestingStartTime > _startAndEndTimestamps[1] + MAX_BUFFER_SECONDS_VESTING) revert VestingStartTimeTooFar();
        }

        bytes memory bytecode = type(IFOInitializableV8).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(_addresses[0], _addresses[1], _startAndEndTimestamps[0]));
        address ifoAddress;

        assembly {
            ifoAddress := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }

        IFOInitializableV8(ifoAddress).initialize(
            _addresses,
            _startAndEndTimestamps,
            MAX_BUFFER_SECONDS,
            _maxPoolId,
            _pointThreshold,
            _vestingStartTime
        );

        if (currIFOAddress != ifoAddress) {
            currIFOAddress = ifoAddress;
        }

        emit NewIFOContract(ifoAddress);
    }

    /**
     * @notice It allows the admin to recover wrong tokens sent to the contract
     * @param _tokenAddress: the address of the token to withdraw
     * @dev This function is only callable by admin.
     */
    function recoverWrongTokens(address _tokenAddress) external onlyOwner {
        uint256 balanceToRecover = IERC20(_tokenAddress).balanceOf(address(this));
        require(balanceToRecover > 0, "Operations: Balance must be > 0");
        IERC20(_tokenAddress).safeTransfer(address(msg.sender), balanceToRecover);

        emit AdminTokenRecovery(_tokenAddress, balanceToRecover);
    }
}
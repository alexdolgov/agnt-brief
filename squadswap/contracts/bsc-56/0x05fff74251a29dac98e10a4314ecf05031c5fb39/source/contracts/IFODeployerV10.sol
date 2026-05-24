// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./access/Ownable.sol";
import "./token/ERC20/IERC20.sol";
import "./token/ERC20/utils/SafeERC20.sol";

import "./IFOInitializableV10.sol";

/**
 * @title IFODeployerV10
 */
contract IFODeployerV10 is Ownable {
    using SafeERC20 for IERC20;

    address public NATIVE = address(0);

    uint256 public MAX_BUFFER_SECONDS; // admin can update
    uint256 public constant MAX_BUFFER_SECONDS_VESTING = 86400 * 30; // (30 days on BSC)

    address public currentIFOAddress;

    event AdminTokenRecovery(address indexed tokenRecovered, uint256 amount);
    event NewMaxBuffer(uint256 maxBuffer);
    event NewIFOContract(address indexed ifoAddress);

    error LpTokenSameWithOfferingToken();
    error AdminAddressIsNull();
    error EndTimeTooFar();
    error StartTimeMustInferiorToEndTime();
    error StartTimeMustGreaterThanCurrentBlockTime();
    error VestingStartTimeTooFar();

    constructor() {
        MAX_BUFFER_SECONDS = 86400 * 30;
    }

    function updateMaxBuffer(uint256 newMaxBuffer) external onlyOwner {
        MAX_BUFFER_SECONDS = newMaxBuffer;
        emit NewMaxBuffer(newMaxBuffer);
    }

    /**
     * @notice It creates the IFO contract and initializes the contract.
     * @dev It can only be called once.
     * @param _addresses [0] lpToken0 [1] lpToken1 [2] offeringToken [3] adminAddress - if raise in native token, set lpToken as address(0)
     * @param _startAndEndTimestamps [0] startTimestamp [1] endTimestamp
     * @param _maxPoolId Maximum id of pools, if it is 0 means 1 pool, and 1 means 2 pools
     * @param _vestingStartTime The start timestamp of vesting - set 0 if no vesting required, though the actual vesting is configured in setPool
     */
    function createIFO(
        address[] calldata _addresses,
        uint256[] calldata _startAndEndTimestamps,
        uint8 _maxPoolId,
        uint256 _vestingStartTime
    ) external onlyOwner {
        if (_maxPoolId == 0) {
            require(_addresses[1] == NATIVE, "lp1 should be address(0)");
        }
        if (_addresses[0] == _addresses[2] || _addresses[1] == _addresses[2]) {
            revert LpTokenSameWithOfferingToken();
        }
        if (_addresses[0] != NATIVE)
            require(IERC20(_addresses[0]).totalSupply() >= 0);
        if (_addresses[1] != NATIVE)
            require(IERC20(_addresses[1]).totalSupply() >= 0);
        require(IERC20(_addresses[2]).totalSupply() >= 0);
        if (_addresses[3] == address(0)) revert AdminAddressIsNull();
        if (_startAndEndTimestamps[1] >= (block.timestamp + MAX_BUFFER_SECONDS))
            revert EndTimeTooFar();
        if (_startAndEndTimestamps[0] >= _startAndEndTimestamps[1])
            revert StartTimeMustInferiorToEndTime();
        if (_startAndEndTimestamps[0] <= block.timestamp)
            revert StartTimeMustGreaterThanCurrentBlockTime();
        if (_vestingStartTime != 0) {
            if (
                _vestingStartTime >
                _startAndEndTimestamps[1] + MAX_BUFFER_SECONDS_VESTING
            ) {
                revert VestingStartTimeTooFar();
            }
        }

        bytes memory bytecode = type(IFOInitializableV10).creationCode;
        bytes32 salt = keccak256(
            abi.encodePacked(
                _addresses[0],
                _addresses[1],
                _addresses[2],
                _startAndEndTimestamps[0]
            )
        );
        address ifoAddress;

        assembly {
            ifoAddress := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }

        IFOInitializableV10(ifoAddress).initialize(
            _addresses,
            _startAndEndTimestamps,
            MAX_BUFFER_SECONDS,
            _maxPoolId,
            _vestingStartTime
        );
        currentIFOAddress = ifoAddress;

        emit NewIFOContract(ifoAddress);
    }

    /**
     * @notice It allows the admin to recover wrong tokens sent to the contract
     * @param _tokenAddress The address of the token to withdraw
     * @dev This function is only callable by admin.
     */
    function recoverWrongTokens(address _tokenAddress) external onlyOwner {
        uint256 balanceToRecover = IERC20(_tokenAddress).balanceOf(
            address(this)
        );
        require(balanceToRecover > 0, "Operations: Balance must be > 0");
        IERC20(_tokenAddress).safeTransfer(msg.sender, balanceToRecover);

        emit AdminTokenRecovery(_tokenAddress, balanceToRecover);
    }
}

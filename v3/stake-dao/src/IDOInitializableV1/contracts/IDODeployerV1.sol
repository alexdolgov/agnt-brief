// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin-4.5.0/contracts/access/Ownable.sol";
import "@openzeppelin-4.5.0/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin-4.5.0/contracts/token/ERC20/utils/SafeERC20.sol";

import "./IDOInitializableV1.sol";

/**
 * @title IDODeployerV1
 */
contract IDODeployerV1 is Ownable {
    using SafeERC20 for IERC20;

    uint256 public MAX_BUFFER_SECONDS; // (7 days on BSC)

    address public currIDOAddress;

    event AdminTokenRecovery(address indexed tokenRecovered, uint256 amount);
    event NewMaxBuffer(uint256 maxBuffer);
    event NewIDOContract(address indexed idoAddress);

    error LpTokenSameWithOfferingToken();
    error AdminAddressIsNull();
    error EndTimeTooFar();
    error StartTimeMustInferiorToEndTime();
    error StartTimeMustGreaterThanCurrentBlockTime();

    constructor() {
        MAX_BUFFER_SECONDS = 86400 * 30;
    }

    function updateMaxBuffer(uint256 newMaxBuffer) external onlyOwner {
        MAX_BUFFER_SECONDS = newMaxBuffer;
        emit NewMaxBuffer(newMaxBuffer);
    }

    /**
     * @notice It creates the IDO contract and initializes the contract.
     * @dev It can only be called once.
     * @param _addresses: [0] lpToken [1] offeringToken [2] adminAddress
     * @param _startAndEndTimestamps: [0] startTimestamp [1] endTimestamp
     */
    function createIDO(address[] calldata _addresses, uint256[] calldata _startAndEndTimestamps) external onlyOwner {
        if (_addresses[0] != address(0)) {
            require(IERC20(_addresses[0]).totalSupply() >= 0);
        }
        require(IERC20(_addresses[1]).totalSupply() >= 0);
        if (_addresses[0] == _addresses[1]) revert LpTokenSameWithOfferingToken();
        if (_startAndEndTimestamps[1] >= (block.timestamp + MAX_BUFFER_SECONDS)) revert EndTimeTooFar();
        if (_startAndEndTimestamps[0] >= _startAndEndTimestamps[1]) revert StartTimeMustInferiorToEndTime();
        if (_startAndEndTimestamps[0] <= block.timestamp) revert StartTimeMustGreaterThanCurrentBlockTime();

        bytes memory bytecode = type(IDOInitializableV1).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(_addresses[0], _addresses[1], _startAndEndTimestamps[0]));
        address idoAddress;

        assembly {
            idoAddress := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }

        IDOInitializableV1(idoAddress).initialize(_addresses, _startAndEndTimestamps, MAX_BUFFER_SECONDS);

        if (currIDOAddress != idoAddress) {
            currIDOAddress = idoAddress;
        }

        emit NewIDOContract(idoAddress);
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

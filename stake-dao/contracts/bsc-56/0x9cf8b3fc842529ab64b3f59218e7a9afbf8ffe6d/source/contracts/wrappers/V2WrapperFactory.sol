// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
pragma abicoder v2;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import "./V2Wrapper.sol";

contract V2WrapperFactory is Ownable {
    event NewWrapperContract(address indexed wrapper, address indexed stakedToken, address indexed rewardToken, uint256 rewardPerSecond, uint256 startTimestamp, uint256 endTimestamp);

    constructor() {
        //
    }

    /*
     * @notice Deploy the pool
     * @param _stakedToken: staked token address
     * @param _rewardToken: reward token address
     * @param _rewardPerSecond: reward per second (in rewardToken)
     * @param _startTimestamp: start block timestamp
     * @param _endTimestamp: end block timestamp
     * @param _admin: admin address with ownership
     * @param _boostContract: boost contract address
     * @return address of new smart chef contract
     */
    function deployPool(
        IERC20Metadata _stakedToken,
        IERC20Metadata _rewardToken,
        uint256 _rewardPerSecond,
        uint256 _startTimestamp,
        uint256 _endTimestamp,
        address _admin,
        address _boostContract
    ) external onlyOwner {
        require(_stakedToken.totalSupply() >= 0);
        require(_rewardToken.totalSupply() >= 0);
        require(_stakedToken != _rewardToken, "Tokens must be different");

        bytes memory bytecode = type(V2Wrapper).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(_stakedToken, _rewardToken, _startTimestamp));
        address wrapperAddress;

        assembly {
            wrapperAddress := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }

        V2Wrapper(wrapperAddress).initialize(
            _stakedToken,
            _rewardToken,
            _rewardPerSecond,
            _startTimestamp,
            _endTimestamp,
            _admin,
            _boostContract
        );

        emit NewWrapperContract(
            wrapperAddress,
            address(_stakedToken),
            address(_rewardToken),
            _rewardPerSecond,
            _startTimestamp,
            _endTimestamp
        );
    }
}

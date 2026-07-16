// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;
pragma abicoder v2;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import "./GullStaking.sol";

contract GullStakingFactory is Ownable {
    
    address[] public stakingVaults;
    mapping(address token => address vault) public tokenToStakingVaults;

    error Initialized();
    error WrongToken();
    event NewStakeRewardContract(address indexed StakeReward);
    
    constructor () Ownable(msg.sender) {}

    
    /*
     * @notice Deploy the pool
     * @param _stakedToken: staked token address
     * @return address of new smart chef contract
     */
    function deployPool(
        address _stakedToken
    ) external onlyOwner returns (address _addr) {
        if(IERC20(_stakedToken).totalSupply() < 0) revert WrongToken();
        if(tokenToStakingVaults[_stakedToken] != address(0)) revert Initialized();
    
        bytes memory bytecode = type(GullStaking).creationCode;
        bytecode = abi.encodePacked(
            bytecode,
            abi.encode(_stakedToken) // pass constructor args
        );
        // pass constructor argument
        bytes32 salt = keccak256(abi.encodePacked(_stakedToken));
        

        assembly {
            _addr := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }
        stakingVaults.push(_addr);
        tokenToStakingVaults[_stakedToken] = _addr;
        emit NewStakeRewardContract(_addr);
    }
    
    function length() external view returns (uint) {
        return stakingVaults.length;
    }

}
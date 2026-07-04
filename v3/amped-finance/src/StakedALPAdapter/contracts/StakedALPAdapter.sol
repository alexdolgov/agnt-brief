// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "./StakedALP.sol";

/**
 * @title StakedALPAdapter
 * @notice This contract adapts the StakedALP contract to implement the functions
 * required by the wALP contract
 */
contract StakedALPAdapter {
    StakedALP public immutable stakedAlp;
    
    constructor(address _stakedAlp) public {
        stakedAlp = StakedALP(_stakedAlp);
    }
    
    // DetailedERC20 interface functions required by wALP
    function name() external pure returns (string memory) {
        return "StakedALP";
    }
    
    function symbol() external pure returns (string memory) {
        return "sALP";
    }
    
    function decimals() external pure returns (uint8) {
        return 18;
    }
    
    // ERC20 interface functions that delegate to the underlying StakedALP contract
    function balanceOf(address account) external view returns (uint256) {
        return stakedAlp.balanceOf(account);
    }
    
    function totalSupply() external view returns (uint256) {
        return stakedAlp.totalSupply();
    }
    
    function transfer(address recipient, uint256 amount) external returns (bool) {
        return stakedAlp.transfer(recipient, amount);
    }
    
    function allowance(address owner, address spender) external view returns (uint256) {
        return stakedAlp.allowance(owner, spender);
    }
    
    function approve(address spender, uint256 amount) external returns (bool) {
        return stakedAlp.approve(spender, amount);
    }
    
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool) {
        return stakedAlp.transferFrom(sender, recipient, amount);
    }
}

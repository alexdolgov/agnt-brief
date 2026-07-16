// Dependency file: contracts/interfaces/IERC20.sol

// SPDX-License-Identifier: MIT
// pragma solidity >=0.5.0;

interface IERC20 {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);
}


// Root file: contracts/Airdrop.sol

pragma solidity >=0.6.0;

// import 'contracts/interfaces/IERC20.sol';

contract Airdrop  {
    
    function batchTransfer (IERC20 _token, address[] calldata _users, uint[] calldata _values) external {
        require(_users.length == _values.length, 'invalid parameters');
        for (uint i=0; i<_users.length; i++){
            _token.transferFrom(msg.sender, _users[i], _values[i]);
        }
    }
}

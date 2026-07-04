// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

/**
                       &GJ7P         P7JG&        
                &    &57JG&           &GJ75&    & 
               J7B  B77B                 B77B  B7J
               ?7P &77&                   &77& 57J
               &Y75J75    &#         #&    Y7JY7Y&
                 &PY7?&  P7J&       &J7P  &?7YP&  
                    B?7G&?7G         G7?&G7?B     
                      BY777?J???????J?777YB       
                 &#BBB#G7777777777777777?G#BBB#   
                P777777777???7777777???777777777G 
                Y77777777?!.~???????~.!?77777777Y 
                 #BP77777?~ ^?7!~!7?^ ~?77777PB&  
                   B777777777:     :777777777G    
                   Y7777777?~  :~:  ~?7777777J    
                   J777777777.  .  :777777777?    
                   J77777777??7~^~7?777777777?    
                   Y7777777777?????7777777777J    
                   P7???????????????????????75        

    website : https://arbswap.io
    twitter : https://twitter.com/arbswapofficial
 */

contract MockNovaFarm {
    string public constant name = "MockNovaFarm";
    string public constant symbol = "MNF";
    uint8 public constant decimals = 18;
    uint256 public constant totalSupply = 100 ether;
    mapping(address => mapping(address => uint256)) public allowance;
    mapping(address => uint256) public balanceOf;
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event Transfer(address indexed from, address indexed to, uint256 value);

    constructor() {
        balanceOf[msg.sender] = totalSupply;
        emit Transfer(address(0), msg.sender, totalSupply);
    }

    function transfer(address dst, uint256 amount) external virtual returns (bool) {
        require(amount <= balanceOf[msg.sender], "ERC20: transfer amount exceeds balance");
        balanceOf[msg.sender] = balanceOf[msg.sender] - amount;
        balanceOf[dst] = balanceOf[dst] + amount;
        emit Transfer(msg.sender, dst, amount);
        return true;
    }

    function transferFrom(address src, address dst, uint256 amount) external virtual returns (bool) {
        uint256 allowed = allowance[src][msg.sender]; // Saves gas for limited approvals.
        require(amount <= allowed, "ERC20: transfer amount exceeds allowance");
        require(amount <= balanceOf[src], "ERC20: transfer amount exceeds balance");
        if (allowed != type(uint256).max) allowance[src][msg.sender] = allowed - amount;
        balanceOf[src] = balanceOf[src] - amount;
        balanceOf[dst] = balanceOf[dst] + amount;
        emit Transfer(src, dst, amount);
        return true;
    }

    function approve(address _spender, uint256 amount) external returns (bool) {
        allowance[msg.sender][_spender] = amount;
        emit Approval(msg.sender, _spender, amount);
        return true;
    }
}
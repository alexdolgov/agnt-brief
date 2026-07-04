pragma solidity 0.6.12;


import "./ERC20.sol";
import "./Ownable.sol";

contract NewToken is ERC20, Ownable {
    
    address _minter;
    uint256 public premint;

    constructor (string memory name, string memory symbol, uint256 _premint, address _premintTo) ERC20 (name, symbol) public {
        _mint(_premintTo, _premint);
        premint = _premint;
    }
    
    modifier onlyMinter() {
        require(_minter == _msgSender(), "MINTER: caller is not the minter");
        _;
    }
    
    /// @notice Creates `_amount` token to `_to`.
    function mint(address _to, uint256 _amount) public onlyMinter {
        _mint(_to, _amount);
    }
    
    function burn(uint256 amount) public virtual {
        _burn(_msgSender(), amount);
    }
}
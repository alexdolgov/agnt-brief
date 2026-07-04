pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract IronStableCoin is ERC20Burnable, Ownable {
    /// @dev only minter can mint. This intented to be rToken address
    address public minter;

    event MinterChanged(address oldMinter, address newMinter);

    modifier onlyMinter() {
        require(msg.sender == minter, "!minter");
        _;
    }

    /**
     * @param genesisAmount mint some small amount to add liquidity
     */
    constructor(string memory _name, string memory _symbol, uint256 genesisAmount) ERC20(_name, _symbol) {
        _mint(msg.sender, genesisAmount);
    }

    function mint(address to, uint256 amount) external onlyMinter {
        _mint(to, amount);
    }

    function burnFrom(address from, uint256 amount) public override onlyMinter {
        ERC20Burnable.burnFrom(from, amount);
    }

    function setMinter(address _minter) external onlyOwner {
        require(_minter != address(0), "zeroAddress");
        require(_minter != minter, "unchanged");

        address oldMinter = minter;
        minter = _minter;
        emit MinterChanged(oldMinter, _minter);
    }
}

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "./IPositionToken.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./interfaces/IPosiV2Migrate.sol";

contract PosiV2Migrate is Ownable {
    using SafeMath for uint256;
    IPositionToken public posiv1;
    IPositionToken public posiv2;
    uint256 public convertRate = 4182207476096403596;
    uint256 private baseDec = 10**18;
    mapping(address => bool) private _isMigrated;
    IPosiV2Migrate public oldMigrator = IPosiV2Migrate(0x8dA8601f0a7242D84Ae3466C424A8AF3614211a1);
    address public dev;

    constructor(IPositionToken _posiv1, IPositionToken _posiv2) public {
        posiv1 = _posiv1;
        posiv2 = _posiv2;
        dev = msg.sender;
    }

    function isMigrated(address account) public view returns (bool) {
        return _isMigrated[account] || oldMigrator.isMigrated(account);
    }

    function posiv2Balance(address account) public view returns (uint256) {
        if(isMigrated(account)) return 0;
        return posiv1.balanceOf(account).mul(baseDec).div(convertRate);
    }

    function migrate() public {
        require(!isMigrated(msg.sender), "migrated");
        uint256 newBalance = posiv2Balance(msg.sender);
        if(newBalance > 0){
            //cover 1% fee
            posiv2.transfer(msg.sender, newBalance.add(newBalance.div(100)));
        }
        _isMigrated[msg.sender] = true;
    }

    function transferPosi(address recipient, uint256 amount) public onlyOwner {
        posiv2.transfer(recipient, amount);
    }

    function setDev(address newDev) public onlyOwner {
        dev = newDev;
    }

    function setIsMigrated(address account, bool value) public {
        require(msg.sender == dev, "!dev");
        _isMigrated[account] = value;
    }
}

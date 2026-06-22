// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;

import '@openzeppelin/contracts/access/Ownable.sol';
import "./libs/BscConstants.sol";
import "./interfaces/IRouteStorage.sol";

contract RouteStorage is Ownable, BscConstants, IRouteStorage {

    address public adminAddr;

    //mapping(InputToken => mapping(OutputToken => path))
    mapping(address => mapping(address => address[])) public paths;

    constructor(address _adminAddr) public {
        adminAddr = _adminAddr;

        //Sell Tokens Paths
        paths[wbnbAddr][busdAddr] = [wbnbAddr, busdAddr];
        paths[usdtAddr][busdAddr] = [usdtAddr, busdAddr];
        paths[btcbAddr][busdAddr] = [btcbAddr, wbnbAddr, busdAddr];
        paths[wethAddr][busdAddr] = [wethAddr, wbnbAddr, busdAddr];
        paths[daiAddr][busdAddr] = [daiAddr, busdAddr];
        paths[usdcAddr][busdAddr] = [usdcAddr, busdAddr];
        paths[dotAddr][busdAddr] = [dotAddr, wbnbAddr, busdAddr];
        paths[cakeAddr][busdAddr] = [cakeAddr, wbnbAddr, busdAddr];
        paths[bscxAddr][busdAddr] = [bscxAddr, busdAddr];
        paths[autoAddr][busdAddr] = [autoAddr, wbnbAddr, busdAddr];
        paths[adaAddr][busdAddr] = [adaAddr, wbnbAddr, busdAddr];
        paths[xvsAddr][busdAddr] = [xvsAddr, wbnbAddr, busdAddr];
        paths[bifiAddr][busdAddr] = [bifiAddr, wbnbAddr, busdAddr];

        //Buy Egg Path
        paths[busdAddr][eggAddr] = [busdAddr, eggAddr];
        //Buy BNB Path
        paths[busdAddr][wbnbAddr] = [busdAddr, wbnbAddr];
    }

    modifier onlyAdmins(){
        require(msg.sender == owner() || msg.sender == adminAddr, "onlyAdmins: FORBIDDEN");
        _;
    }

    function setRouterPath(address inputToken, address outputToken, address[] memory _path, bool overwrite) override external onlyAdmins {
        address[] storage path = paths[inputToken][outputToken];
        uint256 length = _path.length;
        if (!overwrite) {
            require(path.length == 0, "setRouterPath: ALREADY EXIST");
        }
        for (uint256 i = 0; i < length; i++) {
            path.push(_path[i]);
        }
    }

    function getRouterPath(address inputToken, address outputToken) override external view returns (address[] memory){
        address[] storage path = paths[inputToken][outputToken];
        require(path.length > 0, "getRouterPath: MISSING PATH");
        return path;
    }
}

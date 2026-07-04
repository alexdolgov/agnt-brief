// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;
import "./Interface/ISplitRouter.sol";
import "openzeppelin-solidity/contracts/access/Ownable.sol";
import "openzeppelin-solidity/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract PumpSplitRouter is Ownable, Pausable, ReentrancyGuard {    
    address constant public ETH = address(0);
        
    address public swapMgr = address(0x5faE7873C60cDCf3D6B7a12f26B9b3a7A52F263c); // Pump PROD 변경 후
  
    mapping(address=>mapping(address=>bool)) private _approveTo;

    receive () payable external {}

    constructor () {}

    function executeSwap(
        uint256 fromAmount,
        uint256 minReturnAmount,
        ISplitRouter.SwapParams[] calldata swapParams
    ) public nonReentrant payable whenNotPaused {
        (bool success, bytes memory result) = swapMgr.delegatecall(abi.encodeWithSelector(ISplitRouter.swapProtocols.selector,fromAmount,minReturnAmount,swapParams));                
        (uint256 code,string memory message) = abi.decode(result,(uint256,string));
        require(success, "Contract call failed");
        require(code == 200, message);
    }

    function getApproveList(address protocol, address token) external view returns (bool){
        return _approveTo[protocol][token];
    }

    function getVersion() external pure returns (string memory) {
        return '1.2.0';
    }

    function setSwapMgr(address _swapMgr) public onlyOwner {
        swapMgr = _swapMgr;
    }

    // 토큰 거래를 일시 중단합니다.
    function pause() public onlyOwner {
        _pause();
    }

    // 일시 중단된 토큰 거래를 다시 시작합니다.
    function unpause() public onlyOwner {
        _unpause();
    }
}
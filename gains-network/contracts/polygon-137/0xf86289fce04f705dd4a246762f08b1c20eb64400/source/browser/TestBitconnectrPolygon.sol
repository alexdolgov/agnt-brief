pragma solidity ^0.6.0;

import "https://github.com/smartcontractkit/chainlink/blob/develop/evm-contracts/src/v0.6/ChainlinkClient.sol";

contract TestBitconnectrPolygon is ChainlinkClient {
  
    uint256 public price;
    
    address private oracle;
    bytes32 private jobId;
    uint256 private fee;
    
    constructor() public{
        setChainlinkToken(0x3D6834Ccf0a5844D3466b23B5077D19fB9D9C067);
        oracle = 0x39e977B959251b85FEB205Dd73646D922240E043;
        jobId = "8461759318374094b26169ed590eddb4";
        fee = 0 * 1e18; // 0.001 LINK
    }

    function requestPrice() public returns (bytes32 requestId) 
    {
        Chainlink.Request memory request = buildChainlinkRequest(jobId, address(this), this.fulfill.selector);
        request.add("from", "BTC");
        request.add("to", "USD");
        string[] memory path = new string[](1);
        path[0] = "result";
        request.addStringArray("copyPath", path);
        request.addInt("times", 1e5);
        
        // Sends the request
        return sendChainlinkRequestTo(oracle, request, fee);
    }
    
    function fulfill(bytes32 _requestId, uint256 _price) public recordChainlinkFulfillment(_requestId)
    {
        price = _price;
    }
}
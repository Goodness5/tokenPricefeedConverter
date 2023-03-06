// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract swapper {

    address owner;
    uint256 decimal;
    IERC20 public token1;
    IERC20 public token2;


    modifier onlyowner {
        require(msg.sender == owner, "not authorised");

        _;
    }



    function getLatestPrice (AggregatorV3Interface pricefeed) public view returns (uint80 roundID, int price,
        uint  startedAt,uint timeStamp,uint80 answeredInRound) {
        (roundID, price,startedAt,timeStamp,answeredInRound) = pricefeed.latestRoundData();
    } 

}
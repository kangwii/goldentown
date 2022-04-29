
package org.kwjsp.controller;

import org.kwjsp.model.ReplyDTO;
import org.kwjsp.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ReplyController {
	@Autowired
	ReplyService rservice;
	@RequestMapping(value="/replies/new",consumes="application/json",produces={MediaType.TEXT_PLAIN_VALUE}, method=RequestMethod.POST)
	public void add(@RequestBody ReplyDTO rdto) {
//		System.out.println(rdto);
		rservice.add(rdto);
	}
}

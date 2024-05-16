package com.example.multimodule.application;

import static org.assertj.core.api.Assertions.assertThat;

import com.google.common.collect.ImmutableSet;
import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.multimodule.service.MyService;

@SpringBootTest
public abstract class DemoApplicationTest {

	@Autowired
	private MyService myService;
	ImmutableSet<Integer> luckyNumbers = ImmutableSet.of(4,8,15,16,23,42);
	@Test
	public void contextLoads() {
		assertThat(myService.message() + "meh").isNotNull();
	}

}
